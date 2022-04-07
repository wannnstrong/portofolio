import 'package:flutter/material.dart';
import 'package:portofolio/views/constants.dart';
import 'package:portofolio/views/works.dart';

class EndDrawerBar extends StatefulWidget {
  const EndDrawerBar({Key? key}) : super(key: key);

  @override
  _EndDrawerBarState createState() => _EndDrawerBarState();
}

class _EndDrawerBarState extends State<EndDrawerBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: kWhiteColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding * 2, vertical: defaultPadding),
          child: ListView(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (_) => Works()));
                },
                child: ListTile(
                  title: Text(
                    'SERVICES',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => Works()));
                },
                child: ListTile(
                  title: Text(
                    'WORKS',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'EXPERIENCE',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
    );
  }
}
