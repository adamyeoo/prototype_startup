import 'package:flutter/material.dart';
import 'package:demo/data/eventData.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> storyData = [
    'Story 1', 'Story 2', 'Story 3', 'Story 4', 'Story 5', 'Story 6',
    'Story 7', 'Story 8', 'Story 9', 'Story 10', 'Story 11', 'Story 12'
  ];
  List<String> imageData = [
    'Image 1', 'Image 2', 'Image 3', 'Image 4', 'Image 5', 'Image 6',
    'Image 7', 'Image 8', 'Image 9', 'Image 10', 'Image 11', 'Image 12'
  ];
  // 34, 21, 17, 8, 41, 89, 12
  List<Event> eventData = [
    Event(date: 'Wed, Aug 3', time: '6:45 PM', title: '7 v 7 Pick-up Soccer',
          groupName: "UofT Intramural Soccer", attendance: 34),
    Event(date: 'Wed, Aug 3', time: '9:00 AM', title: 'UHN Research Meeting',
          groupName: 'UHN Thoracic Research Lab', attendance: 21),
    Event(date: 'Thu, Aug 4', time: '12:00 PM', title: 'Juggling Workshop',
          groupName: 'UofT Juggling Society', attendance: 17),
    Event(date: 'Thu, Aug 4', time: '1:00 PM', title: 'Goat Yoga Session',
          groupName: 'MRACX Multisport', attendance: 23),
    Event(date: 'Thu, Aug 4', time: '9:45 PM', title: "Rachel's Houseparty",
          groupName: 'Rachel Weisz', attendance: 89),
    Event(date: 'Fri, Aug 5', time: '8:00 PM', title: 'Easy Spanish Lesson',
          groupName: 'UofT Spanish Culture Club', attendance: 12),
    Event(date: 'Mon, Aug 8', time: '10:30 AM', title: 'Frat Party',
          groupName: 'Bob Smith', attendance: 41),
    Event(date: 'Mon, Aug 8', time: '4:00 PM', title: 'Sunday Bible study',
          groupName: 'Young Nak Church', attendance: 8),
    Event(date: 'Tue, Aug 9', time: '9:45 PM', title: "Hector's Houseparty",
          groupName: 'Hector Salamanca', attendance: 89),
    Event(date: 'Wed, Aug 10', time: '6:45 PM', title: '7 v 7 Pick-up Soccer',
          groupName: "Let's Play Soccer!", attendance: 34),
    Event(date: 'Thu, Aug 11', time: '12:00 PM', title: 'Juggling Workshop',
          groupName: 'UofT Juggling Society', attendance: 17),
    Event(date: 'Thu, Aug 11', time: '3:00 AM', title: 'Daddy Daycare',
          groupName: "Joe's Children's Daycare", attendance: 3921),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Andromeda',
          style: TextStyle(
            color: Colors.red[600],
            fontSize: 25,
            fontWeight: FontWeight.w800
          ),
        ),
        backgroundColor: Colors.grey[100],
        elevation: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/map_ui');
          },
          icon: Icon(
            Icons.more_vert,
            color: Colors.red[400],
            size: 30.0
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.message_sharp,
              color: Colors.red[400],
              size: 30.0
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/messages'); // route to messages
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // story widgets
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: storyData.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Container(
                    width: 80, // radius
                    child: Center(
                      child: Text(
                        storyData[index],
                        style: TextStyle(fontSize: 15)
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red),
                      color: Colors.red[50]
                    ),
                  )
                );
              }
            ),
          ),
          // create events widget
          Container(
            height: 70,
            width: 450,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 0.0
              )
            ),
            child: Row(
              children: [
                SizedBox(width: 20),
                // event icon/image
                Icon(
                  Icons.event,
                  color: Colors.red[200],
                  size: 40
                ),
                SizedBox(width: 20),
                // texts
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // header
                    Text(
                      'Create a new event!',
                      style: TextStyle(
                        color: Colors.red[600],
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    // subtext
                    Text(
                      'Organize your own group',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w400
                      )
                    )
                  ],
                ),
                SizedBox(width: 40),
                // 'next chevron' widget
                Icon(
                  Icons.chevron_right,
                  size: 30
                )
              ],
            )
          ),
          // "Events for you" text
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              'Events for you',
              style: TextStyle(
                color: Colors.red[600],
                fontSize: 25,
                fontWeight: FontWeight.w800,
              )
            ),
          ),
          // list of events
          Expanded(
            child: ListView.builder(
              itemCount: eventData.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border(
                      top: BorderSide(
                        color: Colors.grey,
                        width: 0.5
                      )
                    ),
                  ),
                  // EVENT INFO
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${eventData[index].date} - ${eventData[index].time}',
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 12,
                                fontWeight: FontWeight.w600
                              )
                            ),
                            Text(
                              '${eventData[index].title}',
                              style: TextStyle(
                                color: Colors.red[600],
                                fontSize: 20,
                                fontWeight: FontWeight.w600
                              )
                            ),
                            Text(
                              '${eventData[index].groupName}',
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 12,
                                fontWeight: FontWeight.w600
                              )
                            ),
                            Text(
                              '${eventData[index].attendance} attending',
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 10,
                                fontWeight: FontWeight.w600
                              )
                            )
                          ]
                        ),
                      ),
                      SizedBox(width: 10),
                      // IMAGE and 2 ICONS
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            // IMAGE
                            Container(
                              height: 60,
                              width: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.red[50],
                                border: Border.all(color: Colors.red)
                              ),
                              child: Center(child: Text(imageData[index]))
                            ),
                            // 2 ICONS
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star_border_outlined,
                                  size: 22,
                                  color: Colors.red[200]
                                ),
                                Icon(
                                  Icons.share,
                                  size: 22,
                                  color: Colors.red[200]
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ]
      )
    );
  }
}