import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String? pinIconPath;

  const CustomImageContainer({super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.pinIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: InkWell(
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image.asset(
                  imagePath,
                  width: 300,
                  height: 150,
                  fit: BoxFit.fill,
                ),
              ),
              ListTile(
                title: Text(title),
                subtitle: Text(subtitle),
              ),
              if (pinIconPath != null)
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(pinIconPath!),
                  iconSize: 30,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
