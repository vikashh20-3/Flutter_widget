import 'package:flutter/material.dart';

class gridtile extends StatefulWidget {
  const gridtile({super.key});

  @override
  State<gridtile> createState() => _gridtileState();
}

class _gridtileState extends State<gridtile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("GridTile view")),
        body: GridView.builder(
            itemCount: 5,
            // scrollDirection: Axis.horizontal,

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              //  crossAxisSpacing: 15,
              // mainAxisSpacing: 2
            ),
            itemBuilder: ((context, index) {
              return GridTile(
                  header: const ListTile(
                    leading: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/104456893?v=4"),
                    ),
                    title: Text("Vikash"),
                    subtitle: Text("5 days ago"),
                    trailing: IconButton(
                        onPressed: null, icon: Icon(Icons.more_horiz)),
                  ),
                  footer: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.thumb_up_alt),
                        Expanded(child: Text("Like ")),
                        Icon(Icons.chat_outlined),
                        Expanded(child: Text("Comment")),
                        Icon(Icons.share_outlined),
                        Expanded(child: Text("Share")),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.network(
                        "https://img.freepik.com/free-vector/neon-light-arrow-direction-perspective_1017-22033.jpg"),
                  ));
            })));
  }
}
