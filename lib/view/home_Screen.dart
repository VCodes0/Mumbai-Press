import 'package:flutter/material.dart';
import '../../main.dart';
import '../services/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AllServices(),
      appBar: AppBar(
        title: SizedBox(
          height: mq.height * 0.06,
          child: Image.asset("assets/images/logo.png", fit: BoxFit.contain),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            tooltip: 'Language / World',
            icon: Icon(
              Icons.public,
              color: const Color(0xFFD32F2F),
              size: mq.width * 0.07,
            ),
            onPressed: () {},
          ),
          IconButton(
            tooltip: 'Search',
            icon: Icon(
              Icons.search,
              color: const Color(0xFFD32F2F),
              size: mq.width * 0.07,
            ),
            onPressed: () {},
          ),
          SizedBox(width: mq.width * 0.01),
        ],
      ),
      body: Center(
        child: Text(
          'Your content here',
          style: TextStyle(fontSize: mq.width * 0.045),
        ),
      ),
    );
  }
}
