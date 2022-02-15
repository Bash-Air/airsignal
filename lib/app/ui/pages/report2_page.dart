import 'package:flutter/material.dart';

class ReportPage2 extends StatefulWidget {
  const ReportPage2({Key? key}) : super(key: key);
  @override
  ReportPage2State createState() => ReportPage2State();
}

class ReportPage2State extends State<ReportPage2> {
  bool? number = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          Expanded(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Жалоба в ЕДДС',
                    style: TextStyle(
                      fontFamily: 'SFProDisplay-Semibold',
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(height: 1),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      'Позвоните пожалуйста в ЕДДС и сообщите им что чувствуете химический запах и просите установить причину. Звонок анонимный.',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Regular',
                        fontSize: 16,
                        color: Color.fromARGB(137, 104, 100, 100),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('8 (3474) 222-22-22',
                      style: TextStyle(
                          fontFamily: 'SFProDisplay-Semibold',
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'SFProDisplay-Regular',
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Номер ЕДДС Заявки',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                          value: number,
                          onChanged: (numberChange) {
                            setState(() {
                              number = numberChange;
                            });
                          }),
                      const Text(
                        'Не дали номер',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'SFProDisplay-Regular',
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 343,
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
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
