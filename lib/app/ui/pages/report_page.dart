import 'package:airsignal_flutter/app/ui/pages/report2_page.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  ReportPageState createState() => ReportPageState();
}

class ReportPageState extends State<ReportPage> {
  String location = "";
  String experience = "";

  String latitude = "0";
  String longitude = "0";

  bool? headAche = false;
  bool? faint = false;
  bool? sore = false;

  bool? burn = false;
  bool? chem = false;
  bool? otherSmell = false;

  send() async {
    try {
      var uri = Uri.http('api.bashair.ru', '/signal');
      var response = await http.post(uri, headers: {
        "Accept": "application/json",
        "text": experience,
        "location": location,
        "latitude": latitude,

        // "Access-Control-Allow-Origin": "*",
        // "Access-Control_Allow_Origin": "*",
      });
      if (!(response.statusCode == 200)) {
        // ignore: avoid_print
        print('Error sending signal');
      }
    } catch (e) {
      // ignore: avoid_print, unnecessary_brace_in_string_interps
      print('ERROR!!! ${e}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Форма жалобы",
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.left,
            )),
        Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
                decoration: InputDecoration(hintText: "Ваша локация"),
                onChanged: (locationChange) {
                  location = locationChange;
                })),
        Padding(
            padding: const EdgeInsets.all(10),
            child: MaterialButton(
              color: Colors.blue,
              child: Row(
                children: const [
                  Text("покажите, что вокруг вас",
                      style: TextStyle(color: Colors.white)),
                  Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  )
                ],
              ),
              onPressed: () {},
            )),
        Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              Text("Какие у вас симптомы?"),
              Row(
                children: [
                  Checkbox(
                      value: headAche,
                      onChanged: (headAcheChange) {
                        setState(() {
                          headAche = headAcheChange;
                        });
                      }),
                  Text("Болит голова")
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: faint,
                      onChanged: (faintChange) {
                        setState(() {
                          faint = faintChange;
                        });
                      }),
                  Text("Обморок")
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: sore,
                      onChanged: (soreChange) {
                        setState(() {
                          sore = soreChange;
                        });
                      }),
                  Text("Першит горло")
                ],
              )
            ])),
        Padding(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              Text("На что похож запах?"),
              Row(
                children: [
                  Checkbox(
                      value: burn,
                      onChanged: (burnChange) {
                        setState(() {
                          burn = burnChange;
                        });
                      }),
                  Text("Гарь")
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: chem,
                      onChanged: (chemChange) {
                        setState(() {
                          chem = chemChange;
                        });
                      }),
                  Text("Химическийй запах")
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: otherSmell,
                      onChanged: (otherSmellChange) {
                        setState(() {
                          otherSmell = otherSmellChange;
                        });
                      }),
                  Text("другое")
                ],
              )
            ])),
        Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
                decoration: InputDecoration(hintText: "Что вы почувствовали?"),
                onChanged: (expChange) {
                  experience = expChange;
                })),
        Padding(
            padding: const EdgeInsets.all(10),
            child: MaterialButton(
              color: Colors.blue,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Отправить",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              onPressed: () {
                Get.to(const ReportPage2());
              },
            )),
      ]),
    ));
  }
}
