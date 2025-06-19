import 'package:flutter/material.dart';

class NotifVieuw extends StatefulWidget {
  const NotifVieuw({super.key});

  @override
  State<NotifVieuw> createState() => _NotifVieuwState();
}

class _NotifVieuwState extends State<NotifVieuw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Notifications"),
    );
  }
}