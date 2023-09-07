import 'package:flutter/material.dart';

class ExpansionWidget extends StatefulWidget {
  const ExpansionWidget({super.key});

  @override
  State<ExpansionWidget> createState() => _ExpansionWidgetState();
}

class _ExpansionWidgetState extends State<ExpansionWidget>
    with TickerProviderStateMixin {
  bool isShow = false;
  late AnimationController _animationController;
  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(
            Icons.language_rounded,
            color: Colors.white,
          ),
          title: const Text("语言"),
          trailing: RotationTransition(
            turns: Tween(begin: 0.0, end: .25)
                .chain(CurveTween(curve: const Interval(0.2, .8)))
                .animate(_animationController),
            child: const Icon(Icons.chevron_right),
          ),
          onTap: () {
            if (_animationController.isDismissed) {
              _animationController.forward();
              setState(() {
                isShow = true;
              });
            }
            if (_animationController.isCompleted) {
              _animationController.reverse();
              setState(() {
                isShow = false;
              });
            }
          },
        ),
        const Divider(),
        Visibility(
          visible: isShow,
          child: FadeTransition(
            opacity: Tween(begin: 0.0, end: 1.0)
                .chain(CurveTween(curve: Curves.fastOutSlowIn))
                .animate(_animationController),
            child: const Padding(
              padding: EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(title: Text("简体")),
                    Divider(indent: 15),
                    ListTile(title: Text("繁体")),
                    Divider(indent: 15),
                    ListTile(title: Text("English")),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
