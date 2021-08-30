import 'package:flutter/material.dart';
import 'package:flutter_tutorial/utils/util.dart';
import 'package:flutter_tutorial/widgets/contact_button.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  final projectsList = [
    {
      'title': 'Building a Cat',
      'subtitle': 'Great client',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Flutter 2.0 Course',
      'subtitle': 'The best of the best!',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Connekto',
      'subtitle': 'A Flutter app for nerds',
      'image': 'https://picsum.photos/id/1014/400/300'
    },
    {
      'title': 'Been There',
      'subtitle': 'Save places you\'ve visited',
      'image': 'https://picsum.photos/id/3/400/300'
    },
    {
      'title': 'Bengo',
      'subtitle': 'Flutter email app',
      'image': 'https://picsum.photos/id/1025/400/300'
    }
  ];

  @override
  Widget build(BuildContext context) {
    //to divide the body into a row
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //creates a horizontal array of children.
      //spaceBwtween is used for anything that is inside of the row, it's going to be separated all apart.
      crossAxisAlignment: CrossAxisAlignment
          .stretch, // stretch out anything that is inside of this row.
      children: [
        //To make sure that whatever we add inside of these left side or right side
        Expanded(
            //flex is used to tells us exactly how far out these expanded widget is going to take.
            flex: 1,
            child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Expanded(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Opacity(
                              opacity: 0.4,
                              child: Image.asset(
                                'foto_gua.jpg',
                              )),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      'I \'m Made Raja Adi. \nA software developer',
                                      style: TextStyle(
                                          fontSize: 44.5,
                                          color: Colors.blueGrey)),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 50,
                                          vertical:
                                              60), // allows us to do certain things such as horizontally.
                                      child: ContactButton(
                                        buttonText: 'Drop me a line',
                                        icon: Icon(Icons.mail_outline),
                                        onPressed: () => launchMailto(),
                                      ),
                                    ),
                                  )
                                ]),
                          )
                        ],
                      ),
                    )
                  ],
                ))),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .start, //to make sure the alignment component is on the left
          children: [
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'My Project',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                    fontSize: 23),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: projectsList
                    .length, //to set how many items are we expecting to receive in the list
                itemBuilder: (context, index) {
                  //index is to be our current index when we loop the list.
                  return Container(
                    child: Column(
                      children: [
                        //to make a cardview
                        Card(
                            elevation: 3,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.work),
                                  title: Text(projectsList[index]['title']),
                                  subtitle:
                                      Text(projectsList[index]['subtitle']),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Image.network(
                                      projectsList[index]['image']),
                                )
                              ],
                            ))
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        )),
        SizedBox(width: 100)
      ],
    );
  }
}
