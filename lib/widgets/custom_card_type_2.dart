import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? nameCard;

  const CustomCardType2({
    super.key,
    required this.imageUrl,
    this.nameCard,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 30,
      clipBehavior: Clip.antiAlias,
      shadowColor: AppTheme.primaryColor.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('lib/assets/jar-loading.gif'),
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 1000),
          ),
          if (nameCard != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(nameCard!))
        ],
      ),
    );
  }
}
