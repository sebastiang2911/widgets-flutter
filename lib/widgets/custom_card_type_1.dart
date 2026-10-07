import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

class CustomCardType extends StatelessWidget {
  const CustomCardType({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        const ListTile(
          leading: Icon(Icons.account_circle, color: AppTheme.primaryColor),
          title: Text('Sebastian Garcia'),
          subtitle: Text(
              'Nisi ex enim quis veniam consequat et ipsum proident voluptate ullamco incididunt anim esse.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('Cancelar')),
              const SizedBox(width: 8),
              TextButton(
                onPressed: () {},
                child: const Text('Aceptar'),
              ),
              const SizedBox(width: 8),
            ],
          ),
        )
      ],
    ));
  }
}
