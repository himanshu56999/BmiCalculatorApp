import 'package:flutter/cupertino.dart';
const LabelTextStyle= TextStyle(
    fontSize: 18.0, color: Color(0XFF8D8E98));

class iconContent extends StatelessWidget {
  iconContent({ required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style:LabelTextStyle,
        ),
      ],
    );
  }
}