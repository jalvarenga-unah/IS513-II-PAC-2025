import 'package:flutter/material.dart';

class ItemEmail extends StatelessWidget {
  const ItemEmail({
    super.key,
    required this.user,
    required this.subject,
    required this.body,
    required this.time,
  });

  final String user;
  final String subject;
  final String body;
  final String time;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final oritenation = MediaQuery.of(context).orientation;

    print(MediaQuery.of(context).size);
    print(MediaQuery.of(context).orientation);
    print(MediaQuery.of(context).platformBrightness);

    return InkWell(
      splashColor: Colors.red[50],
      onTap: () {
        // TODO: navegar a la pantalla del detalle del correo
      },
      child: Dismissible(
        // confirmDismiss: (direction) => Future.value(false),
        key: Key(Symbol(user).toString()),

        background: Container(
          color: Colors.blue,
          padding: EdgeInsets.only(left: 12),
          child: Align(
            alignment: Alignment.centerLeft,

            child: Icon(
              Icons.archive_outlined,
              color: Colors.blue[50],
              size: 40,
            ),
          ),
        ),

        secondaryBackground: Container(
          color: Colors.red,
          padding: EdgeInsets.only(right: 12),
          child: Align(
            alignment: Alignment.centerRight,

            child: Icon(
              Icons.delete_outline_outlined,
              color: Colors.red[50],
              size: 40,
            ),
          ),
        ),

        onDismissed: (direction) {
          if (direction == DismissDirection.startToEnd) {
            //TODO: evento para archivar el mensaje
          } else {
            //TODO: evento para eliminar un mensaje
          }
        },
        child: Container(
          constraints: BoxConstraints(
            maxHeight:
                size.height * (oritenation == Orientation.portrait ? 0.1 : 0.2),
          ),
          // color: Colors.green,
          margin: EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              CircleAvatar(
                backgroundColor: Colors.red[50],
                radius: 30,
                child: Text(
                  user[0],
                  style: TextStyle(fontSize: 28, color: Colors.red[700]),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      subject,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Text(body, style: TextStyle(color: Colors.grey[700])),
                  ],
                ),
              ),
              SizedBox(width: 12),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(time),
                  SizedBox(height: 8),
                  Icon(Icons.star_border_outlined, color: Colors.grey[600]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
