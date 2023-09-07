import 'package:flutter/material.dart';

class Languages extends StatelessWidget {
  const Languages({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        top: false,
        child: Theme(
          data: ThemeData(
            textTheme: TextTheme(
              titleMedium: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: const Text('English'),
                leading: Image.asset(
                  "assets/en.png",
                  fit: BoxFit.contain,
                  width: 30,
                  height: 30,
                ),
                onTap: () => Navigator.of(context).pop(),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
              ),
              const Divider(),
              ListTile(
                title: const Text('简体'),
                leading: Image.asset(
                  "assets/zh-hans.png",
                  width: 30,
                  height: 30,
                  fit: BoxFit.contain,
                ),
                onTap: () => Navigator.of(context).pop(),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
              ),
              const Divider(),
              ListTile(
                title: const Text('繁体'),
                leading: Image.asset(
                  "assets/zh-hant.png",
                  width: 30,
                  height: 30,
                  fit: BoxFit.contain,
                ),
                onTap: () => Navigator.of(context).pop(),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
