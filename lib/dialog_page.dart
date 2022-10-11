import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dialogue extends StatelessWidget {
  final String image;
  final String name;
  final String email;

  final Color _fontcolor = Colors.white;
  final Color _dividercolor = Colors.black;
  static const IconData smiley = IconData(0xf7e3);
  Dialogue({required this.image, required this.name, required this.email});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
            Column(
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  email,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
        Divider(
          color: _dividercolor,
        ),
        SizedBox(width: 20),
        Row(
          children: [
            const Icon(
              Icons.tag_faces_rounded,
              color: Colors.white,
            ),
            Text(
              "Status",
              style: TextStyle(color: _fontcolor),
            )
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.notifications_off_outlined,
              color: Colors.white,
            ),
            Text(
              "Snooze notifications",
              style: TextStyle(color: _fontcolor),
            )
          ],
        ),
        Divider(
          color: _dividercolor,
        ),
        SizedBox(width: 20),
        Row(
          children: [
            const Icon(
              Icons.email_outlined,
              color: Colors.white,
            ),
            Text(
              "Invitation",
              style: TextStyle(color: _fontcolor),
            )
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.archive_outlined,
              color: Colors.white,
            ),
            Text(
              "Archived",
              style: TextStyle(color: _fontcolor),
            )
          ],
        ),
        Divider(
          color: _dividercolor,
        ),
        SizedBox(width: 20),
        Row(
          children: [
            const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            Text(
              "Settings",
              style: TextStyle(color: _fontcolor),
            )
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.help_outline_sharp,
              color: Colors.white,
            ),
            Text(
              "Help & feedback",
              style: TextStyle(color: _fontcolor),
            )
          ],
        ),
        Divider(
          color: _dividercolor,
        ),
        SizedBox(width: 20),
        Container(
          child: Center(
            child: Text(
              "Privacy Policy * Terms of service",
              style: TextStyle(
                color: _fontcolor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
