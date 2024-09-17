import 'package:flutter/material.dart';
import 'package:today_app/Bixby/home_screen.dart';
import 'package:today_app/login_pages/information_page.dart';
import 'package:today_app/screens/tasks_screen.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 5, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.info_outline),
                        iconSize: 30.0,
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => InformationPage()),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomeScreen()),
                            );
                          },
                          child: Image.asset(
                            'images/gpt.png', // replace with your image path
                            width: 30.0,
                            height: 30.0,
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/211HicF4+BL.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Center(
            child: IconButton(
              icon: Icon(Icons.today),
              iconSize: 200.0,
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TasksScreen()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
