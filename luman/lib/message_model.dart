class ReplyModel {
  final String Reply_Content;
  final String Reply_User;

  ReplyModel({required this.Reply_Content, required this.Reply_User});

  factory ReplyModel.fromRTDB(json) {
    //print(json.runtimeType);
    //print('IM IN');
    return ReplyModel(
      Reply_Content: json['Text'],
      Reply_User: json['User'],
    );
  }
}

class PostModel {
  final String Post_User;
  final String Post_Content;

  PostModel({required this.Post_User, required this.Post_Content});

  factory PostModel.fromRTDB(json) {
    return PostModel(
      Post_Content: json['Content'],
      Post_User: json['User'],
    );
  }
}

class UserModel {
  final PostModel Post_details;
  final ReplyModel Reply_details;

  UserModel({
    required this.Post_details,
    required this.Reply_details,
  });

  factory UserModel.fromRTDB(Map<String, dynamic> json) {
    //print(json.runtimeType);
    //print(json['Post']);
    //print(json['Reply']);

    return UserModel(
      Reply_details: ReplyModel.fromRTDB(json['Reply']),
      /*
      Post_details: PostModel(
          Post_Content: json['Post']['Content'],
          Post_User: json['Post']['User']),
      Reply_details: ReplyModel(
          Reply_Content: json['Reply']['Text'],
          Reply_User: json['Reply']['User']),
          */
      Post_details: PostModel.fromRTDB(json['Post']),
    );
  }
}
