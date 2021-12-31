import 'package:direct_messaging_app/view/ListOfContacts/List_of_contacts.dart';
import 'package:direct_messaging_app/view/ListOfContacts/model/contact.dart';
import 'package:flutter/material.dart';

import 'components/chat_screen.dart';

// ignore: must_be_immutable
class ChatWithContact extends StatefulWidget {
  ChatWithContact({Key? key}) : super(key: key);

  @override
  _ChatWithContactState createState() => _ChatWithContactState();
}

class _ChatWithContactState extends State<ChatWithContact> {
  Contact contact = mockContactList[0];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListOfContacts(onPress: (contact) {
            setState(() {
              this.contact = contact;
            });
          }),
          flex: 2,
        ),
        Expanded(
          child: ChatScreen(
            contact: contact,
          ),
          flex: 3,
        )
      ],
    );
  }
}
