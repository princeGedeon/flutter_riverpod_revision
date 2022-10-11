import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/todos.dart';
import '../utils/providers.dart';

class TodoController{
  final Ref ref;

  TodoController({required this.ref});

  Future<void> saveTodo(Todo obj) async{

    ref.read(TodosRef).add(obj.toMap());


  }

}