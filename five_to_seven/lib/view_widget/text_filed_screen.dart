import 'package:five_to_seven/common/app_text_filed.dart';
import 'package:flutter/material.dart';

class TextFiledScreen extends StatefulWidget {
  const TextFiledScreen({Key? key}) : super(key: key);

  @override
  State<TextFiledScreen> createState() => _TextFiledScreenState();
}

class _TextFiledScreenState extends State<TextFiledScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Filed Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              AppTextFiled(
                controller: nameController,
                prefixIcon: Icons.person_2_outlined,
                hintText: "Enter Name",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter name.";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              AppTextFiled(
                controller: emailController,
                prefixIcon: Icons.email_outlined,
                hintText: "Enter Email",
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              AppTextFiled(
                controller: phoneController,
                prefixIcon: Icons.phone_android_outlined,
                hintText: "Enter Phone",
                textInputType: TextInputType.phone,
              ),
              const SizedBox(height: 20),
              AppTextFiled(
                controller: passwordController,
                prefixIcon: Icons.password_outlined,
                hintText: "Enter Password",
                textInputAction: TextInputAction.done,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  formKey.currentState!.validate();
                },
                child: const Text("Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
