import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_project/constant.dart';

class AddInfoPage extends StatefulWidget {
  const AddInfoPage({super.key});

  @override
  State<AddInfoPage> createState() => _AddInfoPageState();
}

class _AddInfoPageState extends State<AddInfoPage> {
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text(
          "Additional Information",
          style: TextStyle(
            fontSize: 22,
            // fontFamily: "prymaryFont",
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: const Icon(Icons.share_rounded),
              title: const Text(
                "Share Dukkan App",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 17,
              ),
              onTap: () {
                print("Dukkan App Shared");
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.chat_outlined),
            title: const Text(
              "Change Language",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 17,
            ),
            onTap: () {
              print("Language Changed");
            },
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.whatsapp),
            title: const Text(
              "Whatsapp Chat Support",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            trailing: Switch(
              value: _isSwitched,
              onChanged: (value) {
                setState(() {
                  _isSwitched = value;
                });
              },
              activeColor: Colors.blue,
            ),
            onTap: () {
              print("chat support is on");
            },
          ),
          ListTile(
            leading: const Icon(Icons.lock_clock_outlined),
            title: const Text(
              "Privacy Policy",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            onTap: () {
              print("Privacy policy page is opened");
            },
          ),
          ListTile(
            leading: const Icon(Icons.star_border),
            title: const Text(
              "Rate Us",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            onTap: () {
              print("Rating page is opened");
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined),
            title: Text(
              "Log Out",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            onTap: () {
              print("Log out Happend");
            },
          ),
          SizedBox(
            height: 275,
          ),
          Text(
            "Version",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.grey[400],
                letterSpacing: 1.5),
          ),
          Text(
            "2.4.2",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Colors.grey[500],
                letterSpacing: 1.5),
          ),
        ],
      ),
    );
  }
}
