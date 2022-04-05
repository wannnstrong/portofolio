import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portofolio/view/constants.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return Scaffold(
      endDrawer: Drawer(
        child: Container(
          color: kWhiteColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding * 2, vertical: defaultPadding),
            child: ListView(
              children: [
                ListTile(
                  title: Text(
                    'SERVICES',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  title: Text(
                    'WORKS',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverSafeArea(
            sliver: SliverAppBar(
              backgroundColor: kWhiteColor,
              elevation: 0,
              floating: true,
              toolbarHeight: 100,
              title: Text(
                'Ridwan',
                style: TextStyle(
                    fontFamily: 'DancingScript',
                    color: kBlackColor,
                    fontSize: 32,
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
                            vertical: defaultPadding * 1.4),
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
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: AspectRatio(
                aspectRatio: 1.8,
                child: Container(
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hey There,',
                          style: TextStyle(
                              color: kBlackColor,
                              fontSize: 42,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: defaultPadding,
                        ),
                        Text(
                          'I`m, Ridwan',
                          style: TextStyle(
                              color: kBlackColor,
                              fontSize: 42,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: defaultPadding,
                        ),
                        Text(
                          'I Flutter Developer and I love what I do. For all with more than 4 years of experience.',
                          style: TextStyle(color: kBlackColor, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: AspectRatio(
                aspectRatio: 0.7,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  child: Center(
                    child: Image.asset('assets/images/person.png'),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: AspectRatio(
                aspectRatio: 2.1,
                child: Container(
                  color: kWhiteColor,
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: MediaQuery.of(context).size.height * 0.10,
                        child: TimelineTile(
                          endChild: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defaultPadding),
                            child: ListTile(
                              title: Text(
                                'Backend',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: kBlackColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                'Build a Rest Api System Management with PHP, Node js.',
                                style: TextStyle(color: kGreyColor),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          isFirst: true,
                          afterLineStyle: LineStyle(color: kGreyColor),
                          indicatorStyle: IndicatorStyle(
                            iconStyle: IconStyle(
                                iconData: Icons.code, color: kWhiteColor),
                            color: kGreenColor,
                            width: 40,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: MediaQuery.of(context).size.height * 0.10,
                        child: TimelineTile(
                          endChild: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defaultPadding),
                            child: ListTile(
                              title: Text(
                                'Flutter Developer',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: kBlackColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                'Build an Android App E-Commerce with Integrated on Rest Api',
                                style: TextStyle(color: kGreyColor),
                              ),
                            ),
                          ),
                          isLast: true,
                          beforeLineStyle: LineStyle(color: kGreyColor),
                          indicatorStyle: IndicatorStyle(
                            color: kYellowColor,
                            width: 40,
                            iconStyle: IconStyle(
                                iconData: Icons.code_off, color: kWhiteColor),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              vertical: defaultPadding,
              horizontal: defaultPadding,
            ),
            sliver: SliverToBoxAdapter(
              child: AspectRatio(
                aspectRatio: 1.3,
                child: Container(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'My Latest Works',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: defaultPadding / 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Perfect solution for digital experince',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'See More',
                                style: TextStyle(color: kRedColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 4.5,
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/projects/project1.png',
                                      fit: BoxFit.cover,
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4.5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: defaultPadding),
                                      child: Column(
                                        children: [
                                          ListTile(
                                            title: Text(
                                              'Mobile App',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: kWhiteColor),
                                            ),
                                            subtitle: Text(
                                              'E-Commerce',
                                              style: TextStyle(
                                                color: kWhiteColor,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: defaultPadding),
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 4.5,
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                        'assets/images/projects/project2.png',
                                        fit: BoxFit.cover,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                4.5,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: defaultPadding),
                                        child: Column(
                                          children: [
                                            ListTile(
                                              title: Text(
                                                'Mobile App',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: kWhiteColor),
                                              ),
                                              subtitle: Text(
                                                'E-Commerce',
                                                style: TextStyle(
                                                  color: kWhiteColor,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: defaultPadding),
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 4.5,
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                        'assets/images/projects/project3.png',
                                        fit: BoxFit.cover,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                4.5,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: defaultPadding),
                                        child: Column(
                                          children: [
                                            ListTile(
                                              title: Text(
                                                'Mobile App',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: kWhiteColor),
                                              ),
                                              subtitle: Text(
                                                'E-Commerce',
                                                style: TextStyle(
                                                  color: kWhiteColor,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
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
          )
        ],
      ),
    );
  }
}
