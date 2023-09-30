import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app_five/model/to_do_model.dart';
import 'package:firebase_app_five/res/common/app_text_filed.dart';
import 'package:firebase_app_five/utils/utils.dart';
import 'package:flutter/material.dart';

class AddEditToDoView extends StatefulWidget {
  final ToDoModel? toDoModel;
  final String? id;

  const AddEditToDoView({
    super.key,
    this.toDoModel,
    this.id,
  });

  @override
  State<AddEditToDoView> createState() => _AddEditToDoViewState();
}

class _AddEditToDoViewState extends State<AddEditToDoView> {
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  String time = "";

  TimeOfDay timeOfDay = TimeOfDay.now();
  Future displayTimePicker(BuildContext context) async {
    var timeData = await showTimePicker(
      context: context,
      initialTime: timeOfDay,
    );

    if (timeData != null) {
      setState(() {
        time = timeData.format(context);
      });
    }
  }

  FirebaseFirestore fireStore = FirebaseFirestore.instance;

  setTodo() {
    try {
      fireStore.collection("ToDoFire").add({
        "title": titleController.text.trim(),
        "content": contentController.text.trim(),
        "time": time,
      }).then((value) {
        Utils().showToastMessage(content: "To DO successfully add");
        Navigator.pop(context);
      });
    } on FirebaseException catch (error) {
      debugPrint("Firebase error --------> $error");
      Utils().showSnackBar(context: context, content: "Firebase Error --> $error");
    } catch (error) {
      Utils().showSnackBar(context: context, content: "$error");
    }
  }

  upDatTodo() {
    try {
      fireStore.collection("ToDoFire").doc(widget.id).update({
        "title": titleController.text.trim(),
        "content": contentController.text.trim(),
        "time": time,
      }).then((value) {
        Utils().showToastMessage(content: "To DO successfully update");
        Navigator.pop(context);
      });
    } on FirebaseException catch (error) {
      debugPrint("Firebase error --------> $error");
      Utils().showSnackBar(context: context, content: "Firebase Error --> $error");
    } catch (error) {
      Utils().showSnackBar(context: context, content: "$error");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    if (widget.toDoModel != null) {
      titleController.text = widget.toDoModel!.title!;
      contentController.text = widget.toDoModel!.content!;
      time = widget.toDoModel!.time!;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.toDoModel == null ? "Add To-do" : "Edit To-Do"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTextFiled(
              controller: titleController,
              hintText: "Enter Title",
              textInputType: TextInputType.text,
            ),
            const SizedBox(height: 15),
            AppTextFiled(
              controller: contentController,
              hintText: "Enter Content",
              textInputType: TextInputType.text,
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () => displayTimePicker(context),
              child: Container(
                height: 45,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black54, width: 1.2),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(time.isEmpty ? "hh : mm" : time),
                    const SizedBox(width: 8),
                    const Icon(Icons.date_range_rounded),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (widget.toDoModel == null) {
                    setTodo();
                  } else {
                    upDatTodo();
                  }
                },
                child: Text(widget.toDoModel == null ? "Add To-do" : "Edit To-Do"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
