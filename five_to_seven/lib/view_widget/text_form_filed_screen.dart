import 'package:flutter/material.dart';

class TextFormFiledScreen extends StatefulWidget {
  const TextFormFiledScreen({super.key});

  @override
  State<TextFormFiledScreen> createState() => _TextFormFiledScreenState();
}

class _TextFormFiledScreenState extends State<TextFormFiledScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Form Filed Screen"),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            TextFormField(
              controller: nameController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter name.";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "Enter Name",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: emailController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                // if(!RegExp(r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$').hasMatch(value))
                if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)) {
                  return "Please enter right email";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "Enter Email",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: passwordController,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value != "123456") {
                  return "Please enter right password";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "Enter Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  debugPrint("Is valid");
                } else {
                  debugPrint("Is not valid");
                }
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
