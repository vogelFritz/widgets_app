import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';
  HomeScreen({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: const Center(child: Text('Flutter + Material 3')),
        ),
        body: _HomeView(),
        drawer: SideMenu(
          scaffoldKey: scaffoldKey,
        ));
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
        trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
        title: Text(menuItem.title),
        subtitle: Text(menuItem.subTitle),
        leading: Icon(menuItem.icon, color: colors.primary),
        onTap: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(builder: (context) => const ButtonsScreen()));
          // Navigator.pushNamed(context, menuItem.link);
          context.push(menuItem.link);
        });
  }
}
