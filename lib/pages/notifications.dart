import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({ Key? key }) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  List<String> notificationData = [
    'Notification 1', 'Notification 2', 'Notification 3',
    'Notification 4', 'Notification 5', 'Notification 6',
    'Notification 7', 'Notification 8', 'Notification 9',
    'Notification 10', 'Notification 11', 'Notification 12'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Colors.red[400],
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
          )
        )
      ),
      body: ListView.builder(
        itemCount: notificationData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1.0),
            child: Card(
              child: ListTile(
                onTap: () {},
                title: Text(notificationData[index])
              ),
              elevation: 0.0
            )
          );
        },
      ),
    );
  }
}