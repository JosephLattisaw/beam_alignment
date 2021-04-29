import 'package:beam_alignment/screens/beam_alignment/beam_align_side_view_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:beam_alignment/common/router_utility.dart';
import 'package:beam_alignment/screens/beam_alignment/beam_align_top_view_screen.dart';

class HomeScreen extends HookWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

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
            ElevatedButton(
              onPressed: () => RouterUtility.routerUtility(
                  context, BeamAlignTopViewScreen()),
              child: Text("Beam Align Top"),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () => RouterUtility.routerUtility(
                  context, BeamAlignSideViewScreen()),
              child: Text("Beam Align Side"),
            ),
          ],
        ),
      ),
    );
  }
}
