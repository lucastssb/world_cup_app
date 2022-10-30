import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:world_cup_mobile/src/data/models/news.dart';
import 'package:world_cup_mobile/src/presentation/commom_widgets/custom_app_bar.dart';
import 'package:world_cup_mobile/src/presentation/screens/home/controllers/news_controller.dart';

import '../../../services/live_activities/live_activities.dart';
import 'widgets/news_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _liveActivitiesPlugin = LiveActivities();
  String? _latestActivityId;

  final NewsController _newsController = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: Image.asset(
            'assets/images/world_cup_title.png',
            width: 120.0,
          ),
          leading: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () async {
                final activityModel = PizzaLiveActivityModel(
                  name: 'Margherita',
                  description: 'Tomato, mozzarella, basil',
                  quantity: 1,
                  price: 10.0,
                  deliverName: 'John Doe',
                  deliverDate: DateTime.now().add(
                    const Duration(
                      minutes: 6,
                      seconds: 30,
                    ),
                  ),
                );
                _latestActivityId = await _liveActivitiesPlugin
                    .createActivity(activityModel.toMap());
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 300.0,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'LATETS NEWS',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    GetX<NewsController>(builder: (context) {
                      return Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return NewsItem(
                              title: _newsController.news[index].title,
                              category: _newsController.news[index].category,
                              image: _newsController.news[index].imageUrl,
                              date: _newsController.news[index].publishedAt,
                            );
                          },
                          itemCount: _newsController.news.length,
                        ),
                      );
                    }),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class PizzaLiveActivityModel {
  final String name;
  final String description;
  final int quantity;
  final double price;
  final String deliverName;
  final DateTime deliverDate;

  PizzaLiveActivityModel({
    required this.name,
    required this.description,
    required this.quantity,
    required this.price,
    required this.deliverName,
    required this.deliverDate,
  });

  Map<String, String> toMap() {
    return {
      'name': name,
      'description': description,
      'quantity': quantity.toString(),
      'price': price.toString(),
      'deliverName': deliverName,
      'deliverStartDate': DateTime.now().millisecondsSinceEpoch.toString(),
      'deliverEndDate': deliverDate.millisecondsSinceEpoch.toString(),
    };
  }
}
