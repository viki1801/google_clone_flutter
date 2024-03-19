import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widget/footer_text.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
        color: footerColor,
        child: const Padding(
        padding: EdgeInsets.all(5),
    child: Column(
    children: [
    SizedBox(height: 5,),
    Row(
        children: [
        FooterText(title: "India"),
          ]),
          ],))
        ),
        SizedBox(height: 2,),
        Container(
      color: footerColor,
      child: const Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FooterText(title: "About"),
                    SizedBox(width: 10,),
                    FooterText(title: "Advertising"),
                    SizedBox(width: 10,),
                    FooterText(title: "Business"),
                    SizedBox(width: 10,),
                    FooterText(title: "How Search Works"),
                    SizedBox(width: 10,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FooterText(title: "Privacy"),
                    SizedBox(width: 10,),
                    FooterText(title: "Terms"),
                    SizedBox(width: 10,),
                    FooterText(title: "Settings"),
                    SizedBox(width: 10,),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
        ),
        SizedBox(height: 4,),
      ],
    );

  }
}
