import 'package:direct_messaging_app/util/constants.dart';
import 'package:flutter/material.dart';

import 'search_box.dart';

Widget searchBoxWithAddContact() {
  return Stack(
    children: [
      const SearchBox(),
      Positioned(
        right: 0,
        bottom: 0,
        child: Container(
          margin: const EdgeInsets.only(
            right: 28,
          ),
          height: 34,
          width: 34,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 14,
          ),
        ),
      )
    ],
  );
}
