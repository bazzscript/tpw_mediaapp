import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  final messageBanner;
  final messageTitle;
  final messageSpeaker;
  final messageDuration;
  MessageTile(
      {Key? key,
      this.messageBanner = 'image/biblestudy.jpg',
      required this.messageDuration,
      required this.messageSpeaker,
      required this.messageTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15.0, left: 15),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.pinkAccent,
            backgroundImage: AssetImage(messageBanner),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      messageTitle,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    SizedBox(height: 6),
                    Text(
                      messageSpeaker,
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )
                  ],
                ),

                // SizedBox(width: 135),
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                  SizedBox(height: 5),
                  Text(
                    messageDuration,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  )
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
