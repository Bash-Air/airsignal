import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SidePanelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: Row(children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                }, // close drawer
                icon: Icon(
                  Icons.close,
                  size: 30,
                ))
          ]),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 45, 30, 30),
          child: Column(children: [
            Icon(Icons.account_circle, size: 60),
            Text(
              "Гость",
              style: TextStyle(fontSize: 42, fontFamily: "Arial, sans-serif"),
            ),
            Text(
              "С возвращением! ",
              style: TextStyle(fontFamily: "Arial, sans-serif"),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.warning, color: Colors.blue),
                    Text("Отправить жалобу",
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: "Arial, sans-serif"))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.person, color: Colors.blue),
                    Text("Мой профиль",
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: "Arial, sans-serif"))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.description, color: Colors.blue),
                    Text("Новости",
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: "Arial, sans-serif"))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.question_answer, color: Colors.blue),
                    Text("FAQ",
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: "Arial, sans-serif"))
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(8, 30, 8, 8),
                  child: Row(children: [
                    IconButton(
                      icon: Icon(
                        Icons.language,
                        color: Colors.blue,
                      ),
                      onPressed: () async {
                        final url = "https://bashair.ru";

                        launch(url);
                      },
                    )
                  ])),
              Padding(
                  padding: const EdgeInsets.fromLTRB(8, 30, 8, 8),
                  child: Row(children: [
                    TextButton(
                      child: Text("Instagram",
                          style: TextStyle(color: Colors.blue)),
                      onPressed: () async {
                        final url = "https://www.instagram.com/za_vozdyh_str/";

                        launch(url);
                      },
                    )
                  ])),
              Padding(
                  padding: const EdgeInsets.fromLTRB(8, 30, 8, 8),
                  child: Row(children: [
                    TextButton(
                      child: Text("VK", style: TextStyle(color: Colors.blue)),
                      onPressed: () async {
                        final url = "https://vk.com/vozduh_str";

                        launch(url);
                      },
                    )
                  ])),
            ],
          ),
        )
      ],
    ));
  }
}
