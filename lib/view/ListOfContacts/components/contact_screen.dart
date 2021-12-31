import 'package:direct_messaging_app/util/constants.dart';
import 'package:direct_messaging_app/view/ListOfContacts/model/contact.dart';
import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  final Contact contactItem;
  const ContactView(
    this.contactItem, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: 13,
      ),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kSecondaryColor,
        boxShadow: const [
          BoxShadow(
              offset: Offset(5, 5), color: kBgDropDarkColor, blurRadius: 10)
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipOval(
                child: Image.asset(
                  contactItem.image,
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
                    color:
                        contactItem.isOnline ? kOnlineColor : kPlaceholderColor,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(2, 2),
                        color: contactItem.isOnline
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
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        contactItem.name,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 6,
                            width: 6,
                            margin: const EdgeInsets.only(right: 2),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: kBgDropDarkColor,
                            ),
                          ),
                          Container(
                            height: 6,
                            width: 6,
                            margin: const EdgeInsets.only(right: 2),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: kBgDropDarkColor,
                            ),
                          ),
                          Container(
                            height: 6,
                            width: 6,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: kBgDropDarkColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          contactItem.lastMessage,
                          maxLines: 2,
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w300,
                            color: kGrayColor,
                          ),
                        ),
                      ),
                      Text(
                        contactItem.date,
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                          color: kGrayColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
