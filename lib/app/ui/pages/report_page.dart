import 'package:airsignal_flutter/app/ui/pages/report2_page.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
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
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Column(children: [
          const SizedBox(height: 40),
          const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Форма жалобы",
                style: TextStyle(
                    fontFamily: 'SFProDisplay-Semibold', fontSize: 24),
              )),
          const Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                style: TextStyle(fontFamily: 'SFProDisplay-Regular'),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ваша локация',
                ),
              )),
          SizedBox(
            width: 343,
            height: 69,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.blue,
              child: Row(
                children: const [
                  Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                  Expanded(
                    child: Text(
                      "Покажите, что вокруг вас",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SFProDisplay-Semibold',
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),
        ]),
        // Текст
        Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Какие у вас симптомы?",
                  style: TextStyle(
                      fontFamily: 'SFProDisplay-Semibold', fontSize: 24),
                  textAlign: TextAlign.left,
                ),
              ],
            )),
        Padding(
            padding: const EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // const Text(
              //   "Какие у вас симптомы?",
              //   style: TextStyle(
              //       fontFamily: 'SFProDisplay-Semibold', fontSize: 24),
              //   textAlign: TextAlign.left,
              // ),
              Row(
                children: [
                  Checkbox(
                      value: headAche,
                      onChanged: (headAcheChange) {
                        setState(() {
                          headAche = headAcheChange;
                        });
                      }),
                  const Text("Болит голова")
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
                  const Text("Обморок")
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
                  const Text("Першит горло")
                ],
              )
            ])),
        Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "На что похож запах?",
                  style: TextStyle(
                      fontFamily: 'SFProDisplay-Semibold', fontSize: 24),
                  textAlign: TextAlign.left,
                ),
              ],
            )),
        Padding(
            padding: const EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Checkbox(
                      value: burn,
                      onChanged: (burnChange) {
                        setState(() {
                          burn = burnChange;
                        });
                      }),
                  const Text("Гарь")
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
                  const Text("Химический запах")
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
                  const Text("другое")
                ],
              )
            ])),
        const Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Расскажите что вы почувствовали...',
              ),
            )),
        Center(
          child: SizedBox(
            width: 343,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30, top: 5),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.blue,
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Отправить",
                    style: TextStyle(
                        fontFamily: 'SFProDisplay-Semibold',
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
                onPressed: () {
                  Get.to(() => const ReportPage2());
                },
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
