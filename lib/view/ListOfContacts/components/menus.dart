import 'package:direct_messaging_app/util/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Menus extends StatefulWidget {
  var activeMenuItemSelected = 0;
  var menuItemList = ["Recent", "Unread", "Groups"];
  Menus({Key? key}) : super(key: key);

  @override
  _menusState createState() => _menusState();
}

// ignore: camel_case_types
class _menusState extends State<Menus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: 23,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              widget.activeMenuItemSelected == index
                  ? Padding(
                      padding: const EdgeInsets.only(
                        right: kDefaultPadding,
                      ),
                      child: Column(
                        children: [
                          Text(
                            widget.menuItemList[index],
                            style: const TextStyle(
                              color: kPrimaryColor,
                            ),
                          ),
                          const SizedBox(height: 7),
                          Container(
                            height: 3,
                            width: 56,
                            decoration: const BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(
                        right: kDefaultPadding,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.activeMenuItemSelected = index;
                          });
                        },
                        child: Text(
                          widget.menuItemList[index],
                          style: const TextStyle(
                            color: kGrayColor,
                          ),
                        ),
                      ),
                    ),
            ],
          );
        },
        itemCount: widget.menuItemList.length,
      ),
    );
  }
}
