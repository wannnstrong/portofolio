import 'package:flutter/material.dart';
import 'package:portofolio/views/constants.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: kWhiteColor,
      elevation: 0,
      floating: true,
      toolbarHeight: 80,
      title: Text(
        'Ridwan',
        style: TextStyle(
            fontFamily: 'DancingScript',
            color: kBlackColor,
            fontSize: 36,
            fontWeight: FontWeight.bold),
      ),
      automaticallyImplyLeading: false,
      actions: [
        Builder(
          builder: (context) {
            return Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding,
                    vertical: defaultPadding),
                child: ElevatedButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  child: Icon(
                    Icons.menu_outlined,
                    size: 26,
                    color: kBlackColor,
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      CircleBorder(),
                    ),
                    backgroundColor:
                    MaterialStateProperty.all(kWhiteColor),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
