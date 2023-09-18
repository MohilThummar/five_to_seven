import 'package:firebase_app_five/res/common/app_text_filed.dart';
import 'package:firebase_app_five/view/auth_view/signup_view.dart';
import 'package:firebase_app_five/view/home/home_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  User? userData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
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
                    loginUser();
                  }
                },
                child: const Text("Login"),
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpView(),
                    ),
                  );
                },
                child: const Text("Create Account"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  loginUser() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      )
          .then(
        (value) {
          debugPrint(value.user.toString());
          userData = value.user;

          if (userData!.emailVerified) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeView(),
              ),
            );
          } else {
            showDialog(
              context: context,
              builder: (context) => AlertDialog.adaptive(
                title: const Text("Email Verification"),
                content: const Text("We send a verification mail to your email, Please verify that mail to login.\n\nIf you didn't receive mail then resend."),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("cancel"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      value.user!.sendEmailVerification();
                      Navigator.pop(context);
                    },
                    child: const Text("Resend"),
                  ),
                ],
              ),
            );
          }

          setState(() {});
        },
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        debugPrint('No user found for that email. ---------------------------------->>');
      } else if (e.code == 'wrong-password') {
        debugPrint('Wrong password provided for that user. ---------------------------------->>');
      }
    } catch (e) {
      debugPrint("$e ---------------------------------->>");
    }
  }
}
