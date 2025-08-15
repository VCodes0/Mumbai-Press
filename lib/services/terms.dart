import 'package:flutter/material.dart';
import '../main.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: mq.height * 0.07,
          child: Image.asset("assets/images/logo.png", fit: BoxFit.fill),
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
                  'TERMS AND CONDITIONS',
                  style: TextStyle(
                    fontSize: mq.width * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: mq.height * 0.02),
              Text(
                '''
Mumbai Press Mobile Application, an initiative of Mumbai Press and Adaa Production is available on IOS and Android platforms. This mobile application is ably connected to the web portal of Mumbai Press, wholly owned by Adaa Production. All news items, posts, video, advertisements and other information available on the mobile App are linked to mumbaipress.com.

The information posted on Mumbai Press Mobile App is the property of Mumbai Press and Adaa Production. All information available in the mobile App are available for the users, absolutely free of cost. Mumbai Press is neither charging for the usage of the information available on the App, nor does it authorise any individual or a group to charge for the usage.

Mumbai Press and Adaa Production will initiate legal action against those attempting to clone or plagiarise any content of the App, as the App is the property of Adaa Production. Mumbai Press will have the rights to avail of the revenue generated through the App, and anyone found to be misusing the App for mobilising funds or any means of monetary transactions will be liable for legal action.

Mumbai Press has the copyright of the content published on every platform of Mumbai Press. The published items will be posted only after complete verification backed by sound research. Therefore, any fallout of the news published, Mumbai Press will not be responsible for them.
                ''',
                style: TextStyle(
                  fontSize: mq.width * 0.045,
                  height: 1.5,
                  color: Colors.black87,
                  letterSpacing: 0.4,
                ),
              ),
              SizedBox(height: mq.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
