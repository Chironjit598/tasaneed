
import 'package:flutter/material.dart';
import 'package:tasaned_project/component/text/common_text.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CommonText(text: "Check out"),),
    );
  }
}
