import 'package:direct_messaging_app/util/constants.dart';
import 'package:direct_messaging_app/view/ListOfContacts/model/contact.dart';
import 'package:flutter/material.dart';

class ChatItemView extends StatelessWidget {
  const ChatItemView({
    Key? key,
    required this.chat,
  }) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 17,
      ),
      width: double.infinity,
      child: Row(
        children: [
          !chat.isDes ? Container() : const Spacer(),
          !chat.isDes
              ? Container()
              : Stack(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        chat.desImage,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 10,
                        width: 10,
                        margin: const EdgeInsets.only(right: 7),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kOnlineColor,
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(2, 2),
                              color: chat.isDesOnline
                                  ? kOnlineColor
                                  : kPlaceholderColor,
                              blurRadius: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
          Container(
            width: 200,
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  chat.messageDate,
                  style: const TextStyle(
                    color: kGrayColor,
                    fontSize: 11,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 17,
                  ),
                  decoration: BoxDecoration(
                    color: !chat.isDes ? kSecondaryColor : kPrimaryColor,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Text(
                    chat.message,
                    style: TextStyle(
                      color: chat.isDes ? Colors.white : kGrayColor,
                      fontSize: 11,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
