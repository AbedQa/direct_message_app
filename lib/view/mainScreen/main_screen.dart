import 'package:direct_messaging_app/util/responsive.dart';
import 'package:direct_messaging_app/view/Chat/chat_with_contact.dart';
import 'package:direct_messaging_app/view/Chat/components/chat_screen.dart';
import 'package:direct_messaging_app/view/ListOfContacts/List_of_contacts.dart';
import 'package:direct_messaging_app/view/ListOfContacts/model/contact.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: const ListOfContacts(),
        tablet: ChatWithContact(),
      ),
    );
  }
}
