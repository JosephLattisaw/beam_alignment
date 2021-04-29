import 'package:beam_alignment/screens/beam_alignment/beam_align_side_view_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:beam_alignment/common/router_utility.dart';
import 'package:beam_alignment/screens/beam_alignment/beam_align_top_view_screen.dart';
import 'package:beam_alignment/screens/beam_alignment/beam_alignment_settings.dart';
import 'package:provider/provider.dart';
import 'package:beam_alignment/moc_server.dart';

class HomeScreen extends HookWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final server = Provider.of<MocServer>(context, listen: false);
    final serverConnected = context.select((MocServer m) => m.serverConnected);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton.extended(
              onPressed: () => server.connectToServer(!serverConnected),
              label: Text(
                  serverConnected ? "Disconnect from CPU" : "Connect to CPU"),
              backgroundColor: serverConnected ? Colors.green : null,
            ),
            SizedBox(
              height: 20.0,
            ),
            FloatingActionButton.extended(
              onPressed: () => serverConnected
                  ? RouterUtility.routerUtility(
                      context, BeamAlignTopViewScreen())
                  : null,
              label: Text("Beam Align Top"),
              backgroundColor: serverConnected ? null : Colors.grey,
            ),
            SizedBox(
              height: 20.0,
            ),
            FloatingActionButton.extended(
              onPressed: () => serverConnected
                  ? RouterUtility.routerUtility(
                      context, BeamAlignSideViewScreen())
                  : null,
              label: Text("Beam Align Side"),
              backgroundColor: serverConnected ? null : Colors.grey,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () =>
            RouterUtility.routerUtility(context, BeamAlignSettings()),
        label: Text("Settings"),
        backgroundColor: Colors.blue.shade900,
      ),
    );
  }
}
