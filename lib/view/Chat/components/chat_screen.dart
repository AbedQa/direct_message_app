import 'package:direct_messaging_app/util/constants.dart';
import 'package:direct_messaging_app/util/responsive.dart';
import 'package:direct_messaging_app/view/ListOfContacts/model/contact.dart';
import 'package:flutter/material.dart';

import 'chat_item_view.dart';

class ChatScreen extends StatelessWidget {
  final Contact contact;
  const ChatScreen({
    Key? key,
    required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          top: (kDefaultPadding * 1.5),
        ),
        child: Column(
          children: [
            Container(
              height: 53,
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
              ),
              child: Row(
                children: [
                  Responsive.isMobile(context)
                      ? IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            size: 18,
                          ),
                        )
                      : Container(),
                  Text(
                    contact.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: kGrayColor,
                    ),
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    margin: const EdgeInsets.only(left: 13),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kOnlineColor,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(2, 2),
                          color: kOnlineColor,
                          blurRadius: 20,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.info_outline,
                      color: kPlaceholderColor,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: kGrayColor,
              height: 3,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ChatItemView(chat: contact.chatList[index]);
                },
                itemCount: contact.chatList.length,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 6,
                  ),
                  child: Text(
                    contact.chatList[0].isTyping
                        ? "${contact.name} is Typing ..."
                        : "",
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: kGrayColor,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 14,
              ),
              child: Divider(
                color: kGrayColor,
                height: 3,
              ),
            ),
            Container(
              height: 52,
              margin: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 14,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kSecondaryColor,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 14,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Message Abdelrahman',
                          hintStyle: TextStyle(
                            color: kPlaceholderColor,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: kPlaceholderColor,
                    ),
                  ),
                  Container(
                    width: 24,
                    height: 24,
                    margin: const EdgeInsets.only(
                      right: 12,
                    ),
                    child: Image.asset(
                      'assets/icons/emojis.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
