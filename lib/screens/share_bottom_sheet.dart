import 'package:even_hub/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 359,
      width: 375,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(
              height: 24,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 24,
                ),
                Text(
                  'Share with friends',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ShareElementWidget(
                      imagePath: "assets/images/copy_link.png",
                      text: "Copy Link"),
                  ShareElementWidget(
                      imagePath: "assets/images/whatsapp.png",
                      text: "WhatsApp"),
                  ShareElementWidget(
                      imagePath: "assets/images/facebook.png",
                      text: "Facebook"),
                  ShareElementWidget(
                      imagePath: "assets/images/messenger.png",
                      text: "Messenger"),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ShareElementWidget(
                      imagePath: "assets/images/twitter.png", text: "Twitter"),
                  ShareElementWidget(
                      imagePath: "assets/images/instagram.png",
                      text: "Instagram"),
                  ShareElementWidget(
                      imagePath: "assets/images/skype.png", text: "Skype"),
                  ShareElementWidget(
                      imagePath: "assets/images/message.png", text: "Message"),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  backgroundColor: const Color(0xFFEEEEEF),
                  foregroundColor: const Color(0xFF484646)),
              child: const SizedBox(
                height: 58,
                width: 271,
                child: Center(
                  child: Text(
                    'CANCEL',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              onPressed: () => Navigator.pop(context),
            ),
            const SizedBox(
              height: 23,
            ),
          ],
        ),
      ),
    );
  }
}
