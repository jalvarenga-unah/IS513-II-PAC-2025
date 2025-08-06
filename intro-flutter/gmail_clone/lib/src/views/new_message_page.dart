import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NewMessagePage extends StatelessWidget {
  NewMessagePage({super.key});

  final toController = TextEditingController();
  final subjectController = TextEditingController();
  final bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nuevo Mensaje')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: toController,
              decoration: InputDecoration(
                labelText: 'Para',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: subjectController,
              decoration: InputDecoration(
                labelText: 'Asunto',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: bodyController,
              maxLines: 5,
              decoration: InputDecoration(
                labelText: 'Mensaje',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () async {
                //TODO: implementar la lógica para enviar el mensaje
                final message = {
                  'user': toController.text,
                  'subject': subjectController.text,
                  'body': bodyController.text,
                  'time': '11:10',
                };

                await FirebaseFirestore.instance
                    .collection('messages')
                    .add(message);

                if (!context.mounted) return;

                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Mensaje enviado')));
              },
              child: Text('Enviar Mensaje'),
            ),
          ],
        ),
      ),
    );
  }
}
