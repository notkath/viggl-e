/*import 'package:flutter/material.dart';
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
              title: Text('Restaurants'))
        ],
        body: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:viggly_one/components/my_current_location.dart';
import 'package:viggly_one/components/my_drawer.dart';
import 'package:viggly_one/components/my_sliverappbar.dart';
import 'c1_menu.dart';
import 'c2_menu.dart';
import 'c3_menu.dart';
import 'c4_menu.dart';

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
                const MyCurrentLoctaion()
              ],
            ),
            title: const Text('Restaurants'),
          )
        ],
        body: Container(
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const c1Menu()),
                      );
                    },
                    child: const Text('Gazebo C1'),
                  ),
                ),
                const SizedBox(height: 16.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const c2Menu()),
                      );
                    },
                    child: const Text('Gazebo C2'),
                  ),
                ),
                const SizedBox(height: 16.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const c3Menu()),
                      );
                    },
                    child: const Text('Gazebo C3'),
                  ),
                ),
                const SizedBox(height: 16.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const c4Menu()),
                      );
                    },
                    child: const Text('Gazebo C4'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}