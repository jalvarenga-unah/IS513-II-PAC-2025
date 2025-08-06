import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:gmail_clone/src/widgets/item_email.dart';

class EmailListPage extends StatelessWidget {
  const EmailListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FirebaseFirestore.instance.collection('messages').get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return Center(child: Text('No hay mensajes'));
        }

        final messages = snapshot.data!.docs;

        return ListView.builder(
          itemCount: messages.length,
          itemBuilder: (BuildContext contex, int index) {
            return ItemEmail(
              user: messages[index]['user'],
              subject: messages[index]['subject'],
              body: messages[index]['body'],
              time: messages[index]['time'],
            );
          },
        );
      },
    );
  }
}
