import 'package:direct_messaging_app/util/constants.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: (kDefaultPadding * 2),
        left: kDefaultPadding,
        right: kDefaultPadding,
        bottom: kDefaultPadding - 5,
      ),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(7),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Find people and conversations',
          hintStyle: TextStyle(
            color: kPlaceholderColor,
            fontSize: 12.5,
          ),
          prefixIcon: Icon(
            Icons.search,
          ),
        ),
      ),
    );
  }
}
