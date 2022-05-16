import 'package:auto_route/auto_route.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:fitstackapp/core/routing/appRouter.gr.dart';
import 'package:fitstackapp/features/dashboard/presentation/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Main_View extends StatefulWidget {
  const Main_View({Key? key}) : super(key: key);

  @override
  State<Main_View> createState() => _Main_ViewState();
}

class _Main_ViewState extends State<Main_View> {
  int viewIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      bottomNavigationBuilder: (context, tabsRouter) {
        return DotNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          dotIndicatorColor: Colors.transparent,
          onTap: tabsRouter.setActiveIndex,
          backgroundColor: Theme.of(context).colorScheme.surface,
          items: [
            DotNavigationBarItem(
              unselectedColor: Theme.of(context).iconTheme.color,
              selectedColor: Theme.of(context).colorScheme.primary,
              icon: Icon(LineIcons.home),
            ),
            DotNavigationBarItem(
              unselectedColor: Theme.of(context).iconTheme.color,
              selectedColor: Theme.of(context).colorScheme.primary,
              icon: Icon(LineIcons.utensils),
            ),
            DotNavigationBarItem(
              unselectedColor: Theme.of(context).iconTheme.color,
              selectedColor: Theme.of(context).colorScheme.primary,
              icon: Icon(LineIcons.dumbbell),
            ),
            DotNavigationBarItem(
              unselectedColor: Theme.of(context).iconTheme.color,
              selectedColor: Theme.of(context).colorScheme.primary,
              icon: Icon(LineIcons.userFriends),
            ),
            DotNavigationBarItem(
              unselectedColor: Theme.of(context).iconTheme.color,
              selectedColor: Theme.of(context).colorScheme.primary,
              icon: Icon(LineIcons.horizontalEllipsis),
            )
          ],
        );
      },
      routes: const [
        DashBoard_ViewRoute(),
      ],
    );
  }
}