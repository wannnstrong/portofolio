import 'package:flutter/material.dart';
import 'package:portofolio/view/constants.dart';

class Works extends StatefulWidget {
  const Works({Key? key}) : super(key: key);

  @override
  State<Works> createState() => _WorksState();
}

class _WorksState extends State<Works> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverSafeArea(
            sliver: SliverAppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              floating: true,
              backgroundColor: Colors.transparent,
              toolbarHeight: 100,
              title: Text(
                'Ridwan',
                style: TextStyle(
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'DancingScript'),
              ),
            ),
          ),
          // SliverToBoxAdapter(
          //   child: GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder),
          // )
        ],
      ),
    );
  }
}
