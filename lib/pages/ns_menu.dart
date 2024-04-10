/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viggly_one/models/restaurant.dart';
import 'package:viggly_one/models/food.dart';

class Restaurant_1 extends StatelessWidget {
  final List<Food> foodMenu = Restaurant.getlist();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GAZEBO C1'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: foodMenu.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your button onPressed logic here
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            foodMenu[index].name,
                            style: TextStyle(fontSize: 24, color: Colors.black), // Changed text color to black
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Price: \$${foodMenu[index].price}',
                            style: TextStyle(fontSize: 20, color: Colors.black), // Changed text color to black
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viggly_one/models/restaurant.dart';
import 'package:viggly_one/models/food.dart';

class Restaurant_n extends StatelessWidget {
  final List<Food> foodMenu = Restaurant.getlist();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GAZEBO C1'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: foodMenu.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your button onPressed logic here
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            foodMenu[index].imagePath,
                            height: 80, // Adjust the height as needed
                          ),
                          SizedBox(height: 8),
                          Text(
                            foodMenu[index].name,
                            style: TextStyle(fontSize: 24, color: Colors.black),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Price: Rs.${foodMenu[index].price}',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
