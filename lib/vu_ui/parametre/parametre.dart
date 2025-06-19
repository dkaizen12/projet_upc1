import 'package:flutter/material.dart';

class SettingVieuw extends StatefulWidget {
  const SettingVieuw({super.key});

  @override
  State<SettingVieuw> createState() => _SettingVieuwState();
}

class _SettingVieuwState extends State<SettingVieuw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings"),),
    );
  }
}