import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portofolio/views/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  Future<void> _launchGithub() async {
    const url = 'https://github.com/wannnstrong';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchWa() async {
    const noTel = '+6288221264586';
    const waUrlAndorid =
        'https://wa.me/$noTel/?text=Hai, Ada yang bisa saya bantu?';
    if (Platform.isAndroid) {
      if (await canLaunch(waUrlAndorid)) {
        await launch(waUrlAndorid);
      } else {
        throw 'Could not launch $waUrlAndorid';
      }
    }
  }

  Future<void> _launchGmail() async {
    const gmail = 'mailto:ridwanrmdhn765@gmail.com';
    if (await canLaunch(gmail)) {
      await launch(gmail);
    } else {
      throw 'Could not launch $gmail';
    }
  }

  @override
  Widget build(BuildContext context) {
    return  SliverPadding(
      padding: const EdgeInsets.only(
        top: defaultPadding,
      ),
      sliver: SliverToBoxAdapter(
        child: AspectRatio(
          aspectRatio: 1.0,
          child: Container(
            color: kWhiteColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding * 2,
                  vertical: defaultPadding * 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Let`s make something amazing together.',
                    style: TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: defaultPadding * 3,
                  ),
                  Text(
                    'More Information',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: kBlackColor),
                  ),
                  SizedBox(
                    height: defaultPadding / 2,
                  ),
                  Text(
                    'Bantul, Yogyakarta, IND',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchGmail();
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: kRedColor,
                          child: SvgPicture.asset(
                            'assets/images/envelope-solid.svg',
                            fit: BoxFit.cover,
                            width: defaultPadding * 1.4,
                            height: defaultPadding * 1.4,
                            color: kWhiteColor,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        Text(
                          'ridwanrmdhn765@gmail.com',
                          style: TextStyle(
                              fontSize: 18,
                              color: kBlackColor,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchGithub();
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: kWhiteColor,
                          child: SvgPicture.asset(
                            'assets/images/github-brands.svg',
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.cover,
                            color: kBlackColor,
                          ),
                        ),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        Text(
                          'wannnstrong',
                          style: TextStyle(
                              fontSize: 18,
                              color: kBlackColor,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchWa();
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: kGreenColor,
                          child: SvgPicture.asset(
                            'assets/images/whatsapp-brands.svg',
                            width: defaultPadding * 1.4,
                            height: defaultPadding * 1.4,
                            fit: BoxFit.cover,
                            color: kWhiteColor,
                          ),
                        ),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        Text(
                          '+62 88221264586',
                          style: TextStyle(
                              fontSize: 18,
                              color: kBlackColor,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
