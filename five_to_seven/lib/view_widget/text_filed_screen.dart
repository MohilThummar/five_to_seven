import 'package:flutter/material.dart';

class TextFiledScreen extends StatefulWidget {
  const TextFiledScreen({Key? key}) : super(key: key);

  @override
  State<TextFiledScreen> createState() => _TextFIledScreenState();
}

class _TextFIledScreenState extends State<TextFiledScreen> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Filed Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: textController,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.red,
              ),
              textInputAction: TextInputAction.go,
              // textAlign: TextAlign.center,
              enabled: false,
              autocorrect: false,
              autofocus: true,
              cursorColor: Colors.blue,
              inputFormatters: const [
                // FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
              ],
              // textDirection: TextDirection.rtl,
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.text,
              onTap: () {
                debugPrint("onTap --->>");
              },
              // onSubmitted: (value) {
              //   debugPrint("onSubmitted --->> $value");
              // },
              onChanged: (value) {
                debugPrint("onChanged --->> $value");
              },
              // onEditingComplete: () {
              //   debugPrint("onEditingComplete --->>");
              // },
              onTapOutside: (event) {
                debugPrint("onTapOutside --->> $event");
              },
              // maxLength: 20,
              minLines: 1,
              maxLines: 1,
              obscureText: true,
              obscuringCharacter: "1",

              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                // enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                // focusedBorder: ,
                // disabledBorder: ,
                // errorBorder: ,
                // focusedErrorBorder: ,
                //
              ),
            ),
            const SizedBox(height: 20),
            Text(
              textController.text,
            ),
          ],
        ),
      ),
    );
  }
}
