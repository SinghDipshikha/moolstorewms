import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:moolwmsstore/Hr/Controllers/hrController.dart';
import 'package:share_plus/share_plus.dart';

class WhatsAppShareScreen extends StatelessWidget {
  const WhatsAppShareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InvitationPage(),
    );
  }
}

void shareAppInvitation(String message) {
  Share.share(message);
}

String createAppInvitationMessage(String appName, String description) {
  return '''
  Hi there!
  I hope you're doing well. 😊
  I'd like to invite you to check out an amazing app called $appName. It's a fantastic app that [briefly describe what the app does or its benefits].
  I think you'll love it!
  Best,
  Moolstore-WMS
  ''';
}

class InvitationPage extends StatelessWidget {
  const InvitationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invite to App'),
      ),
      body: GetBuilder<HRController>(builder: (hrController) {
        return Center(
          child: ElevatedButton(
            onPressed: () {
              String message = createAppInvitationMessage(
                  'MyAwesomeApp', // app name

                  'it helps you manage your tasks efficiently!' // brief description
                  );
              shareAppInvitation(message);
            },
            child: const Text('Share App Invitation'),
          ),
        );
      }),
    );
  }

  String createAppInvitationMessage(String appName, String description) {
    return '''
    Hi there!
    
    I hope you're doing well. 😊
    
    I'd like to invite you to check out an amazing app called $appName.
    
    Best,
    
    Moolstore-WMS
    
    ''';
  }

  void shareAppInvitation(String message) {
    Share.share(message);
  }
}
