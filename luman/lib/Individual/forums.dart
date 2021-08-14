import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:luman/Individual/quizentry.dart';
import 'dart:async';
import 'dart:convert';
import 'package:luman/message_model.dart';

import 'package:luman/constants.dart';

class Forums extends StatefulWidget {
  final String username;
  const Forums(this.username);
  @override
  ForumsState createState() => ForumsState();
}

class ForumsState extends State<Forums> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int _counter = 0;
  String _valuetoprint = "";
  late DatabaseReference _counterRef;
  late DatabaseReference _messagesRef;
  late DatabaseReference _posts;
  late StreamSubscription<Event> _counterSubscription;
  late StreamSubscription<Event> _messagesSubscription;
  late StreamSubscription<Event> _postsSubscription;
  bool _anchorToBottom = false;

  String _kTestKey = 'Hello';
  String _kTestValue = 'world!';
  DatabaseError? _error;

  @override
  void initState() {
    super.initState();
    // Demonstrates configuring the database directly
    final FirebaseDatabase database = FirebaseDatabase(
        databaseURL:
            "https://flutter-86014-default-rtdb.asia-southeast1.firebasedatabase.app/");

    _messagesRef = database.reference().child('messages');
    _counterRef = database.reference().child('counter');
    _posts = database.reference().child('Forum');

    database.reference().child('counter').get().then((DataSnapshot? snapshot) {
      print(
          'Connected to directly configured database and read ${snapshot!.value}');
    });

    database.setPersistenceEnabled(true);
    database.setPersistenceCacheSizeBytes(10000000);
    _counterRef.keepSynced(true);
    _counterSubscription = _counterRef.onValue.listen((Event event) {
      setState(() {
        _error = null;
        _counter = event.snapshot.value ?? 0;
      });
    }, onError: (Object o) {
      final DatabaseError error = o as DatabaseError;
      setState(() {
        _error = error;
      });
    });
    _messagesSubscription =
        //_messagesRef.limitToLast(10).onChildAdded.listen((Event event) {
        //_messagesRef.onChildAdded.listen((Event event) {
        _messagesRef.onValue.listen((Event event) {
      final data = new Map<String, dynamic>.from(event.snapshot.value);
      //print(data[_counter.toString()]);
      //final user_Model = UserModel.fromRTDB(data[_counter.toString()]);
      //print(data['Content']);
      //print(user_Model.Post_details.Post_Content);
      //print(user_Model.Post_details.Post_User);
      //final desc = data[''];
      //setState(() {
      //_valuetoprint = user_Model.Post_details.Post_Content;
      //print(_valuetoprint);
      //final jsonResponse = json.decode(event.snapshot.value);
      ///UserModel usermode = new UserModel.fromRTDB(jsonResponse);
      //print(user_Model.Post_details.Post_Content);
      //print('Child added: ${event.snapshot.value}');
      //});
      print('Child added: ${event.snapshot.value}');
    }, onError: (Object o) {
      final DatabaseError error = o as DatabaseError;
      print('Error: ${error.code} ${error.message}');
    });
  }

  @override
  void dispose() {
    super.dispose();
    _messagesSubscription.cancel();
    _counterSubscription.cancel();
  }

  Future<void> _increment() async {
    await _counterRef.set(ServerValue.increment(1));

    await _messagesRef
        .push()
        .set(<String, String>{_kTestKey: '$_kTestValue $_counter'});
  }

  Future<void> _decrement() async {
    await _counterRef.set(ServerValue.increment(-1));
  }

  Future<void> _incrementAsTransaction() async {
    // Increment counter in transaction.
    final TransactionResult transactionResult =
        await _counterRef.runTransaction((MutableData mutableData) async {
      mutableData.value = (mutableData.value ?? 0) + 1;
      return mutableData;
    });

    if (transactionResult.committed) {
      await _messagesRef.push().set(<String, String>{
        _kTestKey: '$_kTestValue ${transactionResult.dataSnapshot?.value}'
      });
    } else {
      print('Transaction not committed.');
      if (transactionResult.error != null) {
        print(transactionResult.error!.message);
      }
    }
  }

  Future<void> _postResponse(TextEditingController postcontroller) async {
    String _user = widget.username;
    String _question = postcontroller.text;

    await _counterRef.set(ServerValue.increment(1));

    await _messagesRef //.push()
        //.set(<String, String>{_user: {'Post' : '$_question'}}); //$_counter
        .update({
      _counter.toString(): {
        "Post": {"User": "$_user", "Content": "$_question"},
        "Reply": {"User": "No one", "Text": ""}
      }
    }); //$_counter
  }

  Future<void> _getData(String user) async {
    await _messagesRef.child(user).get().then((DataSnapshot? snapshot) {
      //valuetoprint = snapshot!.value;
      print(
          'Connected to directly configured database and read ${snapshot!.value}');
    });
  }
/*
  UserModel _getresponse(value, String user) {
    //print(value.replaceAll("{", "").replaceAll("}", "").split(":"));
    //List<String> a = value.split(" ");

    final data = Map<String, dynamic>.from(value);
    //final desc = data[user] as String;
    final user_Model = UserModel.fromRTDB(data);
    //print(user_Model.Post_details.Post_Content);

    return user_Model;
  }
  */

  @override
  Widget build(BuildContext context) {
    final postcontroller = TextEditingController();
    String _user = widget.username;
    String _question = postcontroller.text;
    bool reply = false;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: darkgreengrey4,
        title: Text(
          'Luman Forum',
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: size.height * 0.01),
          _error == null
              ? Text('Total of $_counter post${_counter == 1 ? '' : 's'}')
              : Text(
                  'Error retrieving button tap count:\n${_error!.message}',
                ),
          /*
          ElevatedButton(
              onPressed: () async {
                await _incrementAsTransaction();
              },
              child: const Text('Increment as transaction')),
              */

          Flexible(
            child: FirebaseAnimatedList(
              //shrinkWrap: false,
              key: ValueKey<bool>(_anchorToBottom),
              query: _messagesRef,
              reverse: _anchorToBottom,
              itemBuilder: (BuildContext context, DataSnapshot snapshot,
                  Animation<double> animation, int index) {
                return SizeTransition(
                  sizeFactor: animation,
                  child: ListTile(
                    trailing: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        InkWell(
                          splashColor: Colors.white,
                          child: Icon(Icons.edit),
                          onTap: () async {
                            //_messagesRef.child(snapshot.key!).remove();
                            //_decrement();
                            if (snapshot.value['Post']['User'] != _user) {
                              postcontroller.text = "";
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content:
                                          Text('You are unable to edit this')));
                            } else {
                              postcontroller.text =
                                  snapshot.value['Post']['Content'].toString();
                            }
                          },
                        ),
                        InkWell(
                          splashColor: Colors.white,
                          child: Icon(Icons.reply),
                          onTap: () async {
                            //_messagesRef.child(snapshot.key!).remove();
                            //_decrement();

                            if (postcontroller.text == "") {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      'Type your reply in the box and click the reply icon after')));
                              return;
                            } else {
                              var idtoreplace = snapshot.key;
                              await _messagesRef
                                  //.child(snapshot.key!)
                                  .child(idtoreplace.toString())
                                  .update({
                                'Reply': {
                                  'User': _user,
                                  'Text': postcontroller.text
                                }
                              });
                              postcontroller.text = "";
                            }
                          },
                        ),
                        InkWell(
                          splashColor: Colors.white,
                          child: Icon(Icons.delete),
                          onTap: () async {
                            //print(snapshot.key == _counter.toString());
                            if (snapshot.value['Post']['User'] != _user) {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      'You are unable to delete this post')));
                            } else {
                              _messagesRef.child(snapshot.key!).remove();
                              _decrement();
                            }
                          },
                        ),
                      ],
                    ),
                    title: Container(
                      //width: size.width / 1.2,
                      //height: size.height / 8.5,
                      //color: Colors.red[100],
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: pastelGreen,
                        ),
                        color: pastelGreen,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '${snapshot.value['Post']['User']} asks:',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${snapshot.value['Post']['Content']}',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          snapshot.value['Reply']['User'] != ""
                              ? Text(
                                  '${snapshot.value['Reply']['User']} replied:',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              : Container(),
                          Text(
                            '${snapshot.value['Reply']['Text']}',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          /*
                          snapshot.value['Reply']['User'] == 'null'
                              ? ""
                              : Text(
                                  '${snapshot.value['Post']['Content']}',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                */
                          //Text(
                          //  '${snapshot.value.toString().replaceAll("{", "").replaceAll("}", "").split(":")[0]} asks:',
                          //  style: TextStyle(
                          //      fontSize: 15, fontWeight: FontWeight.bold),
                          //),
                          //Text(
                          //   '${snapshot.value.toString().replaceAll("{", "").replaceAll("}", "").split(":")}'),
                          //Text('${_getresponse(snapshot.value, _user)}'),
                          //Text(
                          // '${snapshot.value.toString().replaceAll("{", "").replaceAll("}", "").split(":").reversed.toString().replaceAll("(", "").split(',')[2]}',
                          //),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          Text(
            "Post a question here!",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.01),
          Form(
            key: _formKey,
            child: TextFormField(
              validator: (value) {
                if (value!.isNotEmpty)
                  return null;
                else
                  return 'Please add text';
              },
              controller: postcontroller,
              cursorColor: Colors.black,
              //textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                //fillColor: Colors.black,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: pastelGreen,
                    width: 3.0,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 3.0,
                  ),
                ),
                suffixIcon: IconButton(
                  color: userIconColor,
                  icon: Icon(
                    Icons.send,
                    //size: 23.0,
                  ),
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) {
                      return;
                    } //check if form is empty or not
                    _postResponse(postcontroller);
                    postcontroller.clear(); //empty the box
                  },
                ),
                hintText: "<click to add text>",
              ),
            ),
          ),
          ListTile(
            leading: Checkbox(
              onChanged: (bool? value) {
                if (value != null) {
                  setState(() {
                    _anchorToBottom = value;
                  });
                }
              },
              value: _anchorToBottom,
            ),
            title: const Text('Newest to Oldest'),
          ),
          //SizedBox(height: size.height * 0.01),
        ],
      ),
      /*
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      */
    );
  }
}
