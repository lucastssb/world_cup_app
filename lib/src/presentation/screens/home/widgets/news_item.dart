import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    Key? key,
    required this.title,
    required this.category,
    required this.image,
    required this.date,
  }) : super(key: key);

  final String title;
  final String category;
  final String image;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230.0,
      margin: const EdgeInsets.only(right: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.0),
              Colors.black.withOpacity(0.8),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 4.0,
                vertical: 2.0,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(2.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.fire,
                    size: 10.0,
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  Text(category,
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0,
                          )),
                ],
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(title,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
            const SizedBox(height: 8.0),
            Text(date,
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color: Colors.white,
                      fontSize: 10.0,
                    )),
          ],
        ),
      ),
    );
  }
}
