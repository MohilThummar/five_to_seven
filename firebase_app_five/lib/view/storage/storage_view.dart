import 'package:firebase_app_five/utils/utils.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class StorageView extends StatefulWidget {
  const StorageView({super.key});

  @override
  State<StorageView> createState() => _StorageViewState();
}

class _StorageViewState extends State<StorageView> {
  final ImagePicker picker = ImagePicker();
  XFile? image;

  FirebaseStorage firebaseStorage = FirebaseStorage.instance;

  selectImage() async {
    image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      debugPrint("Image Path ----->> ${image!.path}");
      sendImage();
    }
  }

  sendImage() async {
    try {
      Reference reference = firebaseStorage.ref().child("image/123/12345678.png");

      var link = await reference.getDownloadURL();
      debugPrint("Download Link ---> $link");

      // Reference folderReference = reference.child("images");
      //
      // Reference imageReference = folderReference.child("1234.jpg");

      // await reference.putFile(File(image!.path)).then((value) async {
      //   var link = await reference.getDownloadURL();
      //   debugPrint("Download Link ---> $link");
      // });

      //
    } on FirebaseException catch (error) {
      debugPrint("Firebase error --------> $error");
      Utils().showSnackBar(context: context, content: "Firebase Error --> $error");
    } catch (error) {
      Utils().showSnackBar(context: context, content: "Error --> $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // selectImage();

                sendImage();
              },
              child: const Text("Select Image"),
            ),
          ],
        ),
      ),
    );
  }
}
