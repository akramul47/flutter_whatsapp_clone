import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/models/chat_model.dart';
import 'package:flutter_whatsapp_clone/screens/home_screen.dart';
import '../widgets/button_card.dart';

class LoginScreen extends StatefulWidget {
   const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late ChatModel sourceChat;
  List<ChatModel> chatmodels = [
    ChatModel(
      name: "User 1",
      isGroup: false,
      currentMessage: "Hi Everyone",
      time: "4:00",
      icon: "person.svg",
      id: 1,
    ),
    ChatModel(
      name: "User 2",
      isGroup: false,
      currentMessage: "Hi there",
      time: "13:00",
      icon: "person.svg",
      id: 2,
    ),
    
    // ChatModel(
    //   name: "NodeJs Group",
    //   isGroup: true,
    //   currentMessage: "New NodejS Post",
    //   time: "2:00",
    //   icon: "group.svg",
    // ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Padding(
        padding:  EdgeInsets.only(left: 8.0),
        child:  Text("Select an user"),
      ),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: chatmodels.length,
            itemBuilder: (contex, index) => InkWell(
                  onTap: () {
                    sourceChat = chatmodels.removeAt(index);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => Homescreen(
                                  chatmodels: chatmodels,
                                  sourcechat: sourceChat,
                                )));
                  },
                  child: ButtonCard(
                    name: chatmodels[index].name,
                    icon: Icons.person,
                  ),
                )),
      ),
    );
  }
}
