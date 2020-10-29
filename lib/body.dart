import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RaisedButton(
              padding: EdgeInsets.fromLTRB(70, 7, 70, 7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              color: Colors.blue,
              onPressed: () {
                print('I am clicked');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Add to Story',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            RaisedButton(
              padding: EdgeInsets.all(7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              onPressed: () {},
              child: Icon(
                Icons.more_horiz,
              ),
            )
          ],
        ),
        SizedBox(height: 15),
        Divider(),
        SizedBox(height: 13),
        buildRow(
          title: 'Android Lead at DSC OIST',
          icon: FontAwesomeIcons.briefcase,
        ),
        SizedBox(height: 13),
        buildRow(
          title:
              'Studies Computer Science at Oriental Institute of science and Technology,Bhopal',
          icon: FontAwesomeIcons.graduationCap,
        ),
        SizedBox(height: 13),
        buildRow(
          title: 'Went to K.Singh Vision Classes,Kankarbagh,Patna-20,',
          icon: FontAwesomeIcons.graduationCap,
        ),
        SizedBox(height: 13),
        buildRow(
          title: 'Lives in Bhopal, Madhya Pradesh,',
          icon: FontAwesomeIcons.home,
        ),
        SizedBox(height: 13),
        buildRow(
          title: 'From Hajipur,',
          icon: FontAwesomeIcons.mapMarkerAlt,
        ),
        SizedBox(height: 13),
        buildRow(
          title: 'Joined on July 2016,',
          icon: FontAwesomeIcons.clock,
        ),
        SizedBox(height: 13),
        buildRow(
          title: 'Followed by 80 people,',
          icon: FontAwesomeIcons.wifi,
        ),
        SizedBox(height: 13),
        buildRow(
          title: 'imrishuroy,',
          color: Colors.blueAccent,
          icon: FontAwesomeIcons.twitter,
        ),
        SizedBox(height: 13),
        buildRow(
          title: 'sixteenbrains.com,',
          color: Colors.blueAccent,
          icon: Icons.public,
        ),
        SizedBox(height: 13),
        buildRow(
          title: 'imrishuroy,',
          color: Colors.blueAccent,
          icon: FontAwesomeIcons.instagram,
        ),
        SizedBox(height: 13),
        buildRow(
          title: 'imrishuroy.github.io/rishu,',
          color: Colors.blueAccent,
          icon: FontAwesomeIcons.userTag,
        ),
      ],
    );
  }

  Widget buildBoldRow({String normalText, String boldText, IconData icon}) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 14),
        Expanded(
          child: Row(
            children: [
              Text(
                normalText,
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
              Text(
                boldText,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Row buildRow({
    String title,
    IconData icon,
    Color color = Colors.black,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey,
        ),
        SizedBox(width: 15),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              // letterSpacing: 0.8,
              color: color,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
