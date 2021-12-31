class Contact {
  final String image;
  final String name;
  final String lastMessage;
  final bool isOnline;
  final String date;
  final List<Chat> chatList;

  Contact(this.image, this.name, this.lastMessage, this.isOnline, this.date,
      this.chatList);
}

class Chat {
  final String message;
  final String desImage;
  final String messageDate;
  final bool isDes;
  final bool isDesOnline;
  final bool isTyping;

  Chat(this.message, this.desImage, this.messageDate, this.isDes,
      this.isDesOnline, this.isTyping);
}

List<Chat> mockChatList = [
  Chat(
    'I thought this would be an awesome way to interact with the interface.',
    "",
    "Yesterday, 8:19 PM",
    false,
    true,
    true,
  ),
  Chat(
    'I agree! It definitely produces a better user experience.',
    "assets/images/user1.png",
    "Michael Wong, Yesterday 8:20 PM",
    true,
    true,
    true,
  ),
  Chat(
    'I thought this would be an awesome way to interact with the interface.',
    "assets/images/user1.png",
    "Yesterday, 8:19 PM",
    true,
    true,
    true,
  ),
  Chat(
    'Did you get that awesomesauce I sent?',
    "",
    "7:40 PM",
    false,
    true,
    true,
  ),
  Chat(
    'I did, our whole team rubbed it allll over their bread.',
    "assets/images/user1.png",
    "Michael Wong, 7:46 PM",
    true,
    true,
    true,
  ),
  Chat(
    'It was delicious!',
    "assets/images/user1.png",
    "Michael Wong, 9:46 PM",
    true,
    true,
    true,
  ),
  Chat(
    'Awesome!',
    "",
    "9:47 PM",
    false,
    true,
    true,
  ),
];
List<Contact> mockContactList = [
  Contact(
    "assets/images/user0.jpg",
    "Abdelrahman Qasim",
    "Yeah, we all loved it!",
    true,
    "7:47 PM",
    mockChatList,
  ),
  Contact(
    "assets/images/user1.png",
    "Michael Wong",
    "Hello, how r u?",
    false,
    "9:47 AM",
    mockChatList,
  ),
  Contact(
    "assets/images/user2.png",
    "Gus Fring",
    "We need to re-asses our strategy.",
    false,
    "Oct 31",
    mockChatList,
  ),
  Contact(
    "assets/images/user3.png",
    "Walter White",
    "Sometimes, it's better not to talk.",
    true,
    "Oct 30",
    mockChatList,
  ),
  Contact(
    "assets/images/user4.png",
    "Ahmad Qasim",
    "Are you here ?",
    false,
    "Oct 30",
    mockChatList,
  ),
];
