import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Text Example',
      home: ButonluList(),
    );
  }
}

class ButonluList extends StatelessWidget {
  const ButonluList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listem = ["C#", "Java", "Python", "Dart", "C++"];

    String y = "";
    return Scaffold(
        appBar: AppBar(
          title: const Text("Which programming language is this?"),
        ),
        body: Column(children: [
          Expanded(
            child: ListView.builder(
                itemCount: listem.length,
                itemBuilder: (BuildContext context, int index) {
                  return RawMaterialButton(
                      onPressed: () {
                        String y = "a";

                        String z = listem[index];
                        if (z != "Dart") {
                          y = "Wrong!! That was Dart";
                        } else if (z == "Dart") {
                          y = "Correct answer!";
                        }
                        String x = listem[index].toString();
                        var alert = AlertDialog(
                          title: Text(x),
                          content: Text(y),
                        );
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => alert);
                      },
                      child: Text(listem[index].toString()));
                }),
          ),
        ]));
  }
}
