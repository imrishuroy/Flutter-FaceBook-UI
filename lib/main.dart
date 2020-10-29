import 'package:facebook_ui/body.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FaceBook UI',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FaceBook'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 5),
                    ),
                    margin: EdgeInsets.only(bottom: 90.0),
                    child: Image.network(
                      'https://timelinecovers.pro/facebook-cover/download/life-cycle-facebook-cover.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      border: Border.all(
                        color: Colors.white,
                        width: 5,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200.0),
                      child: Image.asset(
                        'assets/images/profile.jpg',
                        height: 150,
                        width: 150,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Rishu Roy',
                style: TextStyle(
                  fontFamily: 'PermanentMarker',
                  fontSize: 30.0,
                ),
              ),
              Text(
                'a Developer',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Body()
            ],
          ),
        ),
      ),
    );
  }
}
