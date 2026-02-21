import 'package:componentes_flutter/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {

  final String url;
  final String title;
  final String subtitle;

  const CustomCard2({
    super.key, 
    required this.url, 
    required this.title, 
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      shadowColor: AppTheme.primary,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(url),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            height: 250,
            fit: BoxFit.cover,
            width: double.infinity,
            fadeInDuration: const Duration(milliseconds: 500),
          ),
          title == '' ? Container() :
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            alignment: AlignmentDirectional.centerStart,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(subtitle)
              ],
            ),
          ),
        ],
      ),
    );
  }
}