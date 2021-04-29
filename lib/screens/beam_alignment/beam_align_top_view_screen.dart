import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BeamAlignTopViewScreen extends HookWidget {
  BeamAlignTopViewScreen({Key key}) : super(key: key);

  static const String title = "Beam Alignment - Top View";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton.extended(
              onPressed: () {},
              label: Text("Go"),
              backgroundColor: Colors.green,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                ),
                Text("Beam center at"),
                SizedBox(
                  width: 8,
                ),
                Container(
                  color: Colors.blue.shade50,
                  child: SizedBox(
                    width: 70,
                    height: 35,
                    child: Center(child: Text("0")),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text("Inches from Det End"),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}
