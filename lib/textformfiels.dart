import 'package:flutter/material.dart';

//THE DIFFERENCE BETWEEN THE TEXTFORMFIELD AND TEXTFIELD IS ONLY THAT VALIDATOR IS NOT PRESENT IN TEXTFIELD WHICH IS USED TO SEND OR SUBMIT THE DATA
class TextFormFields extends StatefulWidget {
  const TextFormFields({super.key});

  @override
  State<TextFormFields> createState() => _TextFormFieldState();
}

class _TextFormFieldState extends State<TextFormFields> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus
          ?.unfocus(), // to remove the keyboard on touching anywhere on screen
      child: Scaffold(
          appBar: AppBar(title: const Center(child: Text("TextFormField"))),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const TextField(
                  decoration: InputDecoration(
                      labelText: " Name",
                      hintText: "Enter your name ",
                      prefixIcon:
                          Icon(Icons.person_4_outlined)), // pre means pehle
                ),
                const TextField(
                  keyboardType: TextInputType.number, // keyboard type
                  decoration: InputDecoration(
                      labelText: "Phone number",
                      hintText: "Enter your phone number",
                      prefixIcon: Icon(Icons.phone_android)),
                ),
                TextFormField(
                  obscureText: true, // means to hide the values
                  validator: null,
                  obscuringCharacter: "*", //what to show instead of value
                  decoration: const InputDecoration(
                      labelText: "Password",
                      hintText: "Enter your password",
                      prefixIcon: Icon(Icons.password_outlined),
                      suffixIcon: Icon(Icons.visibility_sharp)),
                ),
              ],
            ),
          )),
    );
  }
}
