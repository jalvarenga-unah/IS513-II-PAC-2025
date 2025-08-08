import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:gmail_clone/src/widgets/item_email.dart';

class EmailListPage extends StatelessWidget {
  const EmailListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream:
          FirebaseFirestore.instance
              .collection('messages')
              // .where('archived', isEqualTo: false)
              .orderBy('user', descending: true)
              .limit(2)
              .snapshots(),
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
              id: messages[index].id,
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
