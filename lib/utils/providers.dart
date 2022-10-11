import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/todoCrudController.dart';

Provider<CollectionReference> TodosRef = Provider((ref) => FirebaseFirestore.instance.collection("todos"));
final TodoControllers = Provider((ref) => TodoController(ref: ref));