import 'package:flutter/material.dart';
import 'package:flutter_tutorial/utils/util.dart';
import 'package:flutter_tutorial/widgets/body.dart';
import 'package:flutter_tutorial/widgets/button_row.dart';
import 'package:flutter_tutorial/widgets/contact_button.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0, // set an elevation
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 9.0,
                    bottom:
                        9.0), //this params used to determine how much are we going to be padding around
                //we can use EdgeInsets.only to set padding whether it's TOP, BOTTOM, LEFT, OR RIGHT
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  foregroundImage:
                      NetworkImage('https://picsum.photos/200/300'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Made Raja Adi',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic)),
              )
            ],
          ),
          actions: [
            ContactButton(
              buttonText: 'Contact Me',
              icon: Icon(Icons.send_sharp),
              onPressed: () => launchMailto(),
            ),
          ],
        ),
        //stack is used for stacking things on top of each other
        body: Stack(
          children: [
            Body(),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 59,
                      child:
                          ButtonRow()), //for scaling the height of the button box from specified alignemnt
                ))
          ],
        ));
  }
}
