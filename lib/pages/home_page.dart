import 'package:flutter/material.dart';
import 'package:viggly_one/components/my_current_location.dart';
import 'package:viggly_one/components/my_drawer.dart';
import 'package:viggly_one/components/my_sliverappbar.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  //current location
                  MyCurrentLoctaion()
                ],
              ),
              title: Text('Title'))
        ],
        body: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
