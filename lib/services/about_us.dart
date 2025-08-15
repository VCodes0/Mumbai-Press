import 'package:flutter/material.dart';
import '../main.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: mq.height * 0.07,
          child: Image.asset("assets/images/logo.png", fit: BoxFit.contain),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: mq.width * 0.05,
          vertical: mq.height * 0.02,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'ABOUT US',
                  style: TextStyle(
                    fontSize: mq.width * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: mq.height * 0.015),
              _buildParagraph('''
Mumbai Press is India’s first 24-hour live online portal, reporting latest happenings from across the world within minutes having special focus on Mumbai.
'''),
              _buildParagraph('''
Mumbai Press is one of the international digital news sites in India, featuring news breaking in nature from around the world. It breaks news on Current Affairs and presents factual reports with top headlines of the developments taking place in every corner of the world. The portal aims at evolving as a people-centric platform. It strives to cover a wide range of events and happenings, from politics to crime, Bollywood to sports, business to education, science and technology and lifestyle.
'''),
              _buildParagraph('''
We at Mumbai Press are committed to undertake responsible initiatives in news gathering to generate positive environment. Mumbai Press endeavors to be sincerely impartial and adopt utmost professional approach. We attempt to remain prompt in delivering news and be quick enough to break the news first.
'''),
              _buildParagraph('''
Mumbai Press promises to bridge the gap between people and the government of respective countries. Mumbai Press is grateful to its users for having emerged as the true voice of Indians, with consistent rise in the impressions being registered.
'''),
              _buildParagraph(
                'Our Slogan is “For The People and By The People"',
                isItalic: true,
              ),
              SizedBox(height: mq.height * 0.03),
              Text(
                'ABOUT THE FOUNDER',
                style: TextStyle(
                  fontSize: mq.width * 0.048,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: mq.height * 0.01),
              _buildParagraph('''
Adaa Production is an Indian based company having a team of senior journalists who have worked with full responsibility over the last two decades.
'''),
            ],
          ),
        ),
      ),
    );
  }

  // Helper widget for paragraphs
  Widget _buildParagraph(String text, {bool isItalic = false}) {
    return Padding(
      padding: EdgeInsets.only(bottom: mq.height * 0.015),
      child: Text(
        text.trim(),
        style: TextStyle(
          fontSize: mq.width * 0.043,
          height: 1.5,
          color: Colors.black87,
          letterSpacing: 0.3,
          fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
        ),
      ),
    );
  }
}
