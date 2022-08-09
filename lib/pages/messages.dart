import 'package:flutter/material.dart';


class Messages extends StatefulWidget {
  const Messages({ Key? key }) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {

  List<String> messageData = [
    'Message 1', 'Message 2', 'Message 3', 'Message 4', 'Message 5', 'Message 6',
    'Message 7', 'Message 8', 'Message 9', 'Message 10', 'Message 11', 'Message 12'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
        backgroundColor: Colors.red[400],
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
          )
        )
      ),
      body: ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1.0),
            child: Card(
              child: ListTile(
                onTap: () {},
                title: Text(messageData[index])
              ),
              elevation: 0.0
            )
          );
        },
      ),
    );
  }
}