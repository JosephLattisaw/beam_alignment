import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'dart:async';

class BeamAlignSideViewScreen extends HookWidget {
  BeamAlignSideViewScreen({Key key}) : super(key: key);

  static const String title = "Beam Alignment - Side View";

  @override
  Widget build(BuildContext context) {
    final sweepComplete = useState<bool>(false);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton.extended(
                  heroTag: null,
                  onPressed: () => sweepComplete.value = true,
                  label: Text("Sweep"),
                  backgroundColor: Colors.green,
                ),
                SizedBox(
                  width: 100.0,
                ),
                FloatingActionButton.extended(
                  heroTag: null,
                  onPressed: sweepComplete.value ? () {} : null,
                  label: Text("Center"),
                  backgroundColor:
                      sweepComplete.value ? Colors.green : Colors.grey,
                  disabledElevation: 3.0,
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue.shade700,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Top"),
                        SizedBox(width: 8.0),
                        SizedBox(
                          width: 200.0,
                          height: 13.0,
                          child: LinearProgressIndicator(
                            value: 1,
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Text("1025"),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Mid"),
                        SizedBox(width: 8.0),
                        SizedBox(
                          width: 200.0,
                          height: 13.0,
                          child: LinearProgressIndicator(
                            value: 1,
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Text("1182"),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Bottom"),
                        SizedBox(width: 8.0),
                        SizedBox(
                          width: 200.0,
                          height: 13.0,
                          child: LinearProgressIndicator(
                            value: 1,
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Text("1023"),
                        SizedBox(width: 22.0),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Beam Strength",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
