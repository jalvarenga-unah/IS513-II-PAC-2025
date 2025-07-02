import 'package:flutter/material.dart';
import 'package:gmail_clone/data/emails_income.dart';
import 'package:gmail_clone/src/widgets/item_email.dart';

class EmailListPage extends StatelessWidget {
  const EmailListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: emailIncome.length,
      itemBuilder: (BuildContext contex, int index) {
        return ItemEmail(
          user: emailIncome[index]['user'],
          subject: emailIncome[index]['subject'],
          body: emailIncome[index]['body'],
          time: emailIncome[index]['time'],
        );
      },
    );
  }
}
