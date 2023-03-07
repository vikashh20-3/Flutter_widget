import 'package:flutter/material.dart';

class StateManagement extends StatefulWidget {
  const StateManagement({super.key});

  @override
  State<StateManagement> createState() => _StateManagementState();
}

class _StateManagementState extends State<StateManagement> {
  var isVisible = true;
  var userName = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("STATE MANAGEMENT")),
      body: Column(children: [
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
                labelText: "Name",
                hintText: "Enter your name",
                border: OutlineInputBorder(borderSide: BorderSide())),
            onChanged: (value) => userName = value,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            obscureText: isVisible,
            decoration: InputDecoration(
                labelText: "Password",
                hintText: "Ente your password",
                suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    child: Icon(isVisible
                        ? Icons.visibility
                        : Icons.visibility_off_outlined)),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black))),
          ),
        ),
        Text("Welcome $userName ")
      ]),
    );
  }
}
