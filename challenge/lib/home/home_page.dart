import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
//=============================================================================

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int groupValue = 0; //estado do segmented control

  final Map<int, Widget> logoWidgets = const <int, Widget>{
    //valores possíveis para o segmented control retornar
    0: Text("Item 1"),
    1: Text("Item 2"),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Eldorado Challenge"),
        backgroundColor: Colors.orange,
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 55.0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: <Widget>[
                const SizedBox(width: 10.0),
                Expanded(
                  //Widget de smartphones IOS
                  child: CupertinoSegmentedControl<int>(
                    padding:
                        const EdgeInsets.only(bottom: 5, left: 10, right: 10),
                    groupValue: groupValue,
                    selectedColor: Colors.orange,
                    unselectedColor: Colors.white,
                    borderColor: Colors.black,
                    pressedColor: Colors.orange[200],
                    children: {
                      0: buildSegment1('Item 1'),
                      1: buildSegment2("Item 2")
                    },
                    onValueChanged: (groupValue) {
                      setState(() {
                        this.groupValue = groupValue;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 10.0)
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[buildCard()],
        ),
      ),
    );
  }

  //build do primeiro item do segmented control
  Widget buildSegment1(String text) => Container(
        width: MediaQuery.of(context).size.width * 0.50,
        child: TextButton(
          child: Text(text,
              style: const TextStyle(color: Colors.black, fontSize: 20)),
          onPressed: () => Get.toNamed('/item1'),
        ),
      );

  //build do segundo item do segmented control
  Widget buildSegment2(String text) => Container(
        width: MediaQuery.of(context).size.width * 0.50,
        child: TextButton(
          child: Text(text,
              style: const TextStyle(color: Colors.black, fontSize: 20)),
          onPressed: () => Get.toNamed('/item2'),
        ),
      );

  //widget card reutilizável
  Widget buildCard() => Card(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: const <Widget>[
              Text("Card Title Text"),
              Text("Card Subtitle Text")
            ],
          ),
        ),
      );
}
