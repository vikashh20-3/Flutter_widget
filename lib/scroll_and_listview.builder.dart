import 'package:flutter/material.dart';

class listview_scroll extends StatefulWidget {
  const listview_scroll({super.key});

  @override
  State<listview_scroll> createState() => _listview_scrollState();
}

class _listview_scrollState extends State<listview_scroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body:Column
        // body: ListView(
        //first we can use listview option (wrap the column in listview widget)
        // in the listview we dont have to give the width it will take auto to complete width to screeen size
        //     body: SingleChildScrollView(
        // this is the second the option to come out from overlay probblem
        //   child: Column(
        //     children: [
        //       Container(
        //         height: 200,
        //         width: 100,
        //         decoration: const BoxDecoration(color: Colors.orangeAccent),
        //       ),
        //       Container(
        //         height: 500,
        //         width: 100,
        //         decoration: const BoxDecoration(color: Colors.deepOrangeAccent),
        //       ),
        //       Container(
        //         height: 400,
        //         width: 100,
        //         decoration: const BoxDecoration(color: Colors.purpleAccent),
        //       ),
        //       Container(
        //         height: 300,
        //         width: 100,
        //         decoration: const BoxDecoration(color: Colors.deepPurpleAccent),
        //       )
        //     ],
        //   ),
        // )
        //   body: ListView.builder(
        // itemCount: 25,
        // itemBuilder: (context, index) {
        //   return ListTile(
        //     leading: SizedBox(
        //         height: 200,
        //         width: 100,
        //         child: Image.network("https://picsum.photos/seed/picsum/200/300",
        //             fit: BoxFit.fill)),
        //     title: Text("This is Tile $index"),
        //     subtitle: const Text("This is Subtitle"),
        //     trailing: const Icon(Icons.forward_10_outlined),
        //   );
        // },
        // ) // This is listview we can add any widget in this to show as list
        body: SingleChildScrollView(
      child: Column(
        children: [
          ListView.separated(
            // separatorBuilder: (context, index) => const Divider(),
            separatorBuilder: (context, index) => Container(
                height: 14,
                decoration: const BoxDecoration(color: Colors.purple),
                child: const Text("This is seperator of list items")),
            itemCount: 15,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                // to make any widget clickable wrap that with inkwell
                onTap: () {},
                child: ListTile(
                  dense: true,
                  leading: SizedBox(
                      height: 300,
                      width: 100,
                      child: Image.network(
                          "https://picsum.photos/seed/picsum/200/300",
                          fit: BoxFit.cover)),
                  title: Text("This is Tile $index"),
                  subtitle: const Text("This is Subtitle"),
                  trailing: const Icon(Icons.forward_10_outlined),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 200,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black87)),
                child: const Center(
                    child: Text("this is text under the listview"))),
          )
        ],
      ),
    ) // we use listview seperator to add seperator to the listview items
        // in the listview if we are using it inside the column then we have to use shrink to be true and physics to be neverscrollable to show the other items of that column
        // there is also a another option to wrap the listview in the sized box

        );
  }
}
