import 'package:flutter/material.dart';
import 'package:portofolio/widgets/bottom_bar.dart';
import 'package:portofolio/widgets/end_drawer_bar.dart';
import 'package:portofolio/widgets/top_bar.dart';

class Works extends StatefulWidget {
  const Works({Key? key}) : super(key: key);

  @override
  State<Works> createState() => _WorksState();
}

class _WorksState extends State<Works> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: EndDrawerBar(),
      ),
      body: CustomScrollView(
        slivers: [
          TopBar(),
          BottomBar(),
        ],
      ),
    );
  }
}
