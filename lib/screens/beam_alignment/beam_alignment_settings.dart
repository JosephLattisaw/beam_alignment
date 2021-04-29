import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:beam_alignment/moc_server.dart';
import 'package:provider/provider.dart';
import 'package:flutter_spinbox/material.dart';

class BeamAlignSettings extends HookWidget {
  BeamAlignSettings({Key key}) : super(key: key);

  static const String title = "Beam Alignment - Settings";

  @override
  Widget build(BuildContext context) {
    final server = Provider.of<MocServer>(context, listen: false);
    final xrayOn = context.select((MocServer m) => m.xrayOn);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: HorizontalSpinBoxPage(),
      floatingActionButton:
          FloatingActionButton.extended(onPressed: () {}, label: Text("Save")),
    );
  }
}

class HorizontalSpinBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue.shade700,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          child: SpinBox(
                            value: 40,
                            min: 0,
                            max: 100,
                            decoration: InputDecoration(
                              labelText: 'Ebeam',
                              labelStyle: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.all(16),
                        ),
                        Padding(
                          child: SpinBox(
                            value: 15,
                            min: 0.5,
                            max: 15,
                            decimals: 1,
                            step: 0.1,
                            decoration: InputDecoration(
                              labelText: 'Toff',
                              labelStyle: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.all(16),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      child: SpinBox(
                        value: 50,
                        min: 0,
                        max: 100,
                        decoration: InputDecoration(
                          labelText: 'Ibeam %',
                          labelStyle: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.all(16),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue.shade700,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          child: SpinBox(
                            value: 0,
                            min: 0,
                            max: 2048,
                            decoration: InputDecoration(
                              labelText: 'startpxl',
                              labelStyle: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.all(16),
                        ),
                        Padding(
                          child: SpinBox(
                            value: 8,
                            min: 4,
                            max: 32,
                            decoration: InputDecoration(
                              labelText: 'avgcount',
                              labelStyle: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.all(16),
                        ),
                        Padding(
                          child: SpinBox(
                            value: 1.5,
                            min: 0.5,
                            max: 10,
                            step: 0.1,
                            decimals: 1,
                            decoration: InputDecoration(
                              labelText: 'Tbeam',
                              labelStyle: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.all(16),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          child: SpinBox(
                            value: 384,
                            min: 0,
                            max: 2048,
                            decoration: InputDecoration(
                              labelText: 'endpxl',
                              labelStyle: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.all(16),
                        ),
                        Padding(
                          child: SpinBox(
                            value: 0.111,
                            min: 0,
                            max: 0.5,
                            step: 0.001,
                            decimals: 3,
                            decoration: InputDecoration(
                              labelText: 'det_scale',
                              labelStyle: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.all(16),
                        ),
                        Padding(
                          child: SpinBox(
                            value: 0.5,
                            min: 0,
                            max: 1,
                            step: 0.1,
                            decimals: 1,
                            decoration: InputDecoration(
                              labelText: 'beamthreshold',
                              labelStyle: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.all(16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue.shade700,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          child: SpinBox(
                            value: 768,
                            min: 0,
                            max: 2048,
                            decoration: InputDecoration(
                              labelText: 'pxltop',
                              labelStyle: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.all(16),
                        ),
                        Padding(
                          child: SpinBox(
                            value: 384,
                            min: 0,
                            max: 2048,
                            decoration: InputDecoration(
                              labelText: 'pxlmid',
                              labelStyle: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.all(16),
                        ),
                        Padding(
                          child: SpinBox(
                            value: 64,
                            min: 0,
                            max: 2048,
                            decoration: InputDecoration(
                              labelText: 'pxlbottom',
                              labelStyle: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.all(16),
                        ),
                        Padding(
                          child: SpinBox(
                            value: 5,
                            min: 0.5,
                            max: 10,
                            decimals: 1,
                            step: 0.1,
                            decoration: InputDecoration(
                              labelText: 'TSweep',
                              labelStyle: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.all(16),
                        ),
                        Padding(
                          child: SpinBox(
                            value: 500,
                            min: 10,
                            max: 4098,
                            decoration: InputDecoration(
                              labelText: 'maxbeam',
                              labelStyle: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.all(16),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      child: SpinBox(
                        value: 5,
                        min: 0.5,
                        max: 10,
                        decimals: 1,
                        step: 0.1,
                        decoration: InputDecoration(
                          labelText: 'Tcenter',
                          labelStyle: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.all(16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
