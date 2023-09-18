import 'package:firebase_app_five/res/common/app_text_filed.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              AppTextFiled(
                controller: emailController,
                hintText: "Enter Email",
                textInputType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter email address";
                  } else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
                    return "Please enter valid email address";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              AppTextFiled(
                controller: passwordController,
                hintText: "Enter Password",
                textInputType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter password";
                  } else if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~]).{8,}$').hasMatch(value)) {
                    return "Please enter valid password address";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    signUp();
                  }
                },
                child: const Text("Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  signUp() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      )
          .then(
        (value) {
          value.user!.sendEmailVerification();
          debugPrint(value.user.toString());
          showDialog(
            context: context,
            builder: (context) => AlertDialog.adaptive(
              title: const Text("Email Verification"),
              content: const Text("We send a verification mail to your email, Please verify that mail to login."),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Okay"),
                ),
              ],
            ),
          ).then((value) => Navigator.pop(context));
        },
      );
    } on FirebaseAuthException catch (e) { 
      if (e.code == 'weak-password') {
        debugPrint('The password provided is too weak. ---------------------------------->>');
      } else if (e.code == 'email-already-in-use') {
        debugPrint('The account already exists for that email. ---------------------------------->>');
      }
    } catch (e) {
      debugPrint("$e ---------------------------------->>");
    }
  }
}
