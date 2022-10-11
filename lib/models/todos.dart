class Todo {

  String title;
  bool is_finished;
  String desc;

  Todo({required this.title, required this.desc, required this.is_finished});

  Map<String, dynamic> toMap() {
    return {
      //'id':id,
      'desc': desc,
      'title': title,
      'is_finished': is_finished,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(

      title: map['title'] as String,
      desc: map['desc'] as String,
      is_finished: map['is_finished'] as bool,

    );
  }
}