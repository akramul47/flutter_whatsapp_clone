import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/colors.dart';
import 'package:flutter_whatsapp_clone/widgets/chat_list.dart';
import 'package:flutter_whatsapp_clone/widgets/contacts_list.dart';
import 'package:flutter_whatsapp_clone/widgets/web_chat_appbar.dart';
import 'package:flutter_whatsapp_clone/widgets/web_profile_bar.dart';
import 'package:flutter_whatsapp_clone/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: dividerColor,
                ),
              ),
              image: DecorationImage(
                  image: AssetImage('assets/backgroundImage.png'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                const WebChatAppBar(),
                const SizedBox(
                  height: 20,
                ),
                const Expanded(
                  child: ChatList(),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: dividerColor),
                    ),
                    color: chatBarMessage,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 15,),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey,
                            hintText: 'Type a message',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                               width: 0,
                              style: BorderStyle.none, 
                              )
                            ),
                            contentPadding: const EdgeInsets.all(20),
                        ),),
                      ),),
                      IconButton(onPressed: () {}, icon: Icon(Icons.mic, color: Colors.grey,),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}