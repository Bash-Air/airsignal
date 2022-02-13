import 'package:airsignal_flutter/app/controllers/nodes_controller.dart';
import 'package:airsignal_flutter/app/ui/widgets/point_page/history_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../layout/main_layout.dart';

class PointPage extends GetView<NodesController> {
  const PointPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        children: Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFFFE455),
                  Color(0xFFFFC655),
                ],
              )),
          child: Container(
            margin: const EdgeInsets.only(top: 80, left: 20, bottom: 30),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              '12',
                              style: TextStyle(
                                  height: 1,
                                  fontSize: 90,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(bottom: 13, left: 10),
                              child: const Text(
                                'PM2.5',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0x66000000)),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          'Воздух плохой, ожидаются улучшения в ближайшие 8 часов',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    width: 20,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                    color: Color(0x55000000),
                  ),
                  Flexible(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text('Температура: -10°',
                          style: TextStyle(color: Color(0x66000000))),
                      Text('Ветер: 12 м/с',
                          style: TextStyle(color: Color(0x66000000))),
                      Text('Влажность: 83%',
                          style: TextStyle(color: Color(0x66000000))),
                      Text('Давление: 1000 hPa',
                          style: TextStyle(color: Color(0x66000000))),
                    ],
                  )),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 260,
          padding: const EdgeInsets.all(10),
          child: HistoryChart.withSampleData(),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Flexible(
                  child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: const Text(
                      'Здесь куча текста, бла бла бла бла. Рустам сказал напишет тут рекомендации',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: const Text(
                      'Здесь куча текста, бла бла бла бла. Рустам сказал напишет тут рекомендации',
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ))
            ],
          ),
        )
      ],
    ));
  }
}
