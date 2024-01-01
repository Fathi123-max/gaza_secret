import 'dart:convert';

class MyModel {
  int? id;
  String? title;
  String? body;

  MyModel({
    this.id,
    this.title,
    this.body,
  });

  MyModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.title = json['title'];
    this.body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.title;
    data['body'] = this.body;
    return data;
  }

  MyModel copyWith({
    int? id,
    String? title,
    String? body,
  }) {
    return MyModel(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'body': body,
    };
  }

  factory MyModel.fromMap(Map<String, dynamic> map) {
    return MyModel(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      body: map['body'] ?? '',
    );
  }

  @override
  String toString() => 'MyModel(id: $id, title: $title, body: $body)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MyModel &&
        other.id == id &&
        other.title == title &&
        other.body == body;
  }

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ body.hashCode;
}
