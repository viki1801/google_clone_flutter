import 'package:flutter/material.dart';
import 'package:google_clone/widget/web/search_button.dart';

class SearchButtons extends StatelessWidget {
  const SearchButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SearchButton(title: 'Google Search'),
            SizedBox(width: 10,),
            SearchButton(title: "I'm feeling Lucky")
          ],
        )
      ],
    );
  }
}
