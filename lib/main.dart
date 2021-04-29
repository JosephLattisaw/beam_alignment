import 'package:flutter/material.dart';
import 'package:beam_alignment/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:beam_alignment/moc_server.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => MocServer())],
      child: MaterialApp(
        title: 'Beam Alignment Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(title: 'Beam Alignment'),
      ),
    );
  }
}
