// ignore: file_names

import 'package:direct_messaging_app/util/constants.dart';
import 'package:direct_messaging_app/util/responsive.dart';
import 'package:direct_messaging_app/view/Chat/components/chat_screen.dart';
import 'package:direct_messaging_app/view/ListOfContacts/components/menus.dart';
import 'package:direct_messaging_app/view/ListOfContacts/model/contact.dart';
import 'package:flutter/material.dart';

import 'components/contact_screen.dart';
import 'components/search_box_with_add_contact.dart';

class ListOfContacts extends StatefulWidget {
  final Function(Contact)? onPress;
  const ListOfContacts({Key? key, this.onPress}) : super(key: key);

  @override
  _ListOfContactsState createState() => _ListOfContactsState();
}

class _ListOfContactsState extends State<ListOfContacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgLightColor,
      body: SafeArea(
        child: Column(
          children: [
            searchBoxWithAddContact(),
            Menus(),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: ContactView(
                      mockContactList[index],
                    ),
                    onTap: () {
                      if (Responsive.isMobile(context)) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ChatScreen(
                                  contact: mockContactList[index]);
                            },
                          ),
                        );
                      } else {
                        widget.onPress!(mockContactList[index]);
                      }
                    },
                  );
                },
                itemCount: mockContactList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
