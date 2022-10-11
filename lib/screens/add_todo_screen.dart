import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/todos.dart';
import '../utils/providers.dart';

class AddScreen extends ConsumerStatefulWidget {
  const AddScreen({
    Key? key,
  }) : super(key: key);



  @override
  ConsumerState createState() => _AddScreenState();
}

class _AddScreenState extends ConsumerState<AddScreen> {
  late TextEditingController titleController;
  late TextEditingController descController;

  @override
  void initState(){
    super.initState();
    titleController=TextEditingController();
    descController=TextEditingController();
  }

  @override
  void dispose(){
    descController.dispose();
    titleController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [

              TextField(controller: titleController,decoration: InputDecoration(hintText: "Title"),),
              TextField(controller: descController,decoration: InputDecoration(hintText: "Description"),),
              ElevatedButton(onPressed: () async{
                print('clic');
                await ref.read(TodoControllers).saveTodo(Todo(title:titleController.text ,desc: descController.text,is_finished: false));

                
                
                
              }, child: Text("Ajouter"))

            ],
          ),

        ),
      ),
    );
  }
}
