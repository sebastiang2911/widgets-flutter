import 'package:flutter/material.dart';

import '../screens/screens.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes {
  static const String initialRoute = 'homeScreen';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //   route: initialRoute,
    //   name: 'Home Screen',
    //   screen: const HomeScreen(),
    //   icon: Icons.home,
    // ),
    MenuOption(
      route: 'listview1',
      name: 'ListView1 Screen',
      screen: const Listview1Screen(),
      icon: Icons.subject,
    ),
    MenuOption(
      route: 'listview2',
      name: 'ListView2 Screen',
      screen: const Listview2Screen(),
      icon: Icons.toc,
    ),
    MenuOption(
      route: 'alertScreen',
      name: 'Alert Screen',
      screen: const AlertScreen(),
      icon: Icons.notifications_active,
    ),
    MenuOption(
      route: 'cardScreen',
      name: 'Card Screen',
      screen: const CardScreen(),
      icon: Icons.sd_card_alert,
    ),
    MenuOption(
      route: 'avatarScreen',
      name: 'Avatar Screen',
      screen: const AvatarScreen(),
      icon: Icons.account_circle,
    ),
    MenuOption(
      route: 'animatedScreen',
      name: 'Animated Screen',
      screen: const AnimatedScreen(),
      icon: Icons.play_circle,
    ),
    MenuOption(
      route: 'inputs',
      name: 'Text Inputs',
      screen: const InputsScreen(),
      icon: Icons.input_rounded,
    ),
    MenuOption(
      route: 'inputs',
      name: 'Slider Inputs',
      screen: const SliderScreen(),
      icon: Icons.slideshow,
    ),
    MenuOption(
      route: 'listViewBuilder',
      name: 'List View Builder',
      screen: const ListViewBuilderScreen(),
      icon: Icons.build,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes
        .addAll({'homeScreen': (BuildContext context) => const HomeScreen()});

    for (final options in menuOptions) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes =
  //     <String, WidgetBuilder>{
  //   initialRoute: (_) => const HomeScreen(),
  //   'listview1': (_) => const Listview1Screen(),
  //   'listview2': (_) => const Listview2Screen(),
  //   'alertScreen': (_) => const AlertScreen(),
  //   'cardScreen': (_) => const CardScreen()
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
