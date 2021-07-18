import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  final messageBanner;
  final messageTitle;
  final messageSpeaker;
  final messageDuration;
  MessageCard(
      {Key? key,
      required this.messageBanner,
      required this.messageDuration,
      required this.messageSpeaker,
      required this.messageTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(messageTitle);
      },
      child: Container(
        padding: EdgeInsets.only(right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                  image: AssetImage(messageBanner),
                ),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(13),
              ),
              height: 160,
              width: 140,
            ),
            SizedBox(height: 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  messageTitle,
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(
                  width: 38,
                ),
                Text(
                  messageDuration,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                )
              ],
            ),
            SizedBox(height: 3),
            Text(
              messageSpeaker,
              style: TextStyle(color: Colors.grey, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
