import 'package:flutter/material.dart';
import 'package:task1/src/pages/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoginPage',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home:HomePage(),
    );
  }
}
class HomePage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() =>_HomePageState();

}
class _HomePageState extends State<HomePage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.redAccent,
          centerTitle: true,
          title: Text('Login Page',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 1.0
            ),
          )
      ),
      body:LoginPage(),
    );
  }

}
