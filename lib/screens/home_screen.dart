import 'package:flutter/material.dart';
import 'package:genkid/provider.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context,data,child)=>Scaffold(

      ),
    );
  }
}
