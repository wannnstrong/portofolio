import 'dart:io';
import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:portofolio/views/constants.dart';
import 'package:portofolio/widgets/bottom_bar.dart';
import 'package:portofolio/widgets/end_drawer_bar.dart';
import 'package:portofolio/widgets/top_bar.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Future downloader() async {
  //   var status = await Permission.storage.request();
  //   if (status.isGranted) {
  //     final baseStorage = await getExternalStorageDirectory();
  //     await FlutterDownloader.enqueue(
  //         // url:
  //         //     "https://drive.google.com/file/d/1gMN3Uy6cNuQnNo2k2J-DUGRfJTGV8Iry/view?usp=sharing",
  //         url: "https://usaupload.com/6kxl/ridwan_ecom.pdf",
  //         savedDir: baseStorage!.path,
  //         showNotification: true,
  //         openFileFromNotification: true,
  //         saveInPublicStorage: true,
  //         fileName: 'Cv_Ridwan.pdf');
  //   }
  // }
  // ReceivePort _port = ReceivePort();
  //
  // @override
  // void initState() {
  //   IsolateNameServer.registerPortWithName(
  //       _port.sendPort, 'downloader_send_port');
  //   _port.listen((dynamic data) {
  //     String id = data[0];
  //     DownloadTaskStatus status = data[1];
  //     int progress = data[2];
  //
  //     if (status == DownloadTaskStatus.complete) {
  //       print('download complete');
  //     }
  //
  //     setState(() {});
  //   });
  //
  //   FlutterDownloader.registerCallback(downloadCallback);
  //
  //   super.initState();
  // }
  //
  // @override
  // void dispose() {
  //   IsolateNameServer.removePortNameMapping('downloader_send_port');
  //   super.dispose();
  // }
  //
  // @pragma('vm:entry-point')
  // static void downloadCallback(
  //     String id, DownloadTaskStatus status, int progress) {
  //   final SendPort? send =
  //       IsolateNameServer.lookupPortByName('downloader_send_port');
  //   send!.send([id, status, progress]);
  // }

  Future<void> openFile() async {

  }

  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: EndDrawerBar(),
      ),
      body: CustomScrollView(
        slivers: [
          TopBar(),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: AspectRatio(
                aspectRatio: 1.3,
                child: Container(
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding, vertical: defaultPadding),
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
                        SizedBox(
                          height: defaultPadding,
                        ),
                        // TextButton(onPressed: (){
                        //   openFile();
                        // }, child: Text('test'),),
                        MaterialButton(
                          onPressed: () {
                            // downloader();
                            openFile();
                          },
                          child: Text(
                            'Download CV',
                            style: TextStyle(fontSize: 18),
                          ),
                          shape: RoundedRectangleBorder(),
                          textColor: kBlackColor,
                          elevation: defaultPadding,
                          color: kYellowColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: AspectRatio(
                aspectRatio: 0.9,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  child: Center(
                    // child: Image.asset('assets/images/person.png'),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
                top: defaultPadding * 4, bottom: defaultPadding * 2),
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
          BottomBar()
        ],
      ),
    );
  }
}
