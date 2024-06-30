
import 'package:flutter/material.dart';

import '../models/chat_model.dart';
import '../widgets/contacts_list.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key, required this.chatmodels, required this.sourcechat});
  final List<ChatModel> chatmodels;
  final ChatModel sourcechat;

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp Clone"),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String>(
            onSelected: (value) {
              // print(value);
            },
            itemBuilder: (BuildContext contesxt) {
              return [
                const PopupMenuItem(
                  value: "New group",
                  child: Text("New group"),
                ),
                const PopupMenuItem(
                  value: "New broadcast",
                  child: Text("New broadcast"),
                ),
                const PopupMenuItem(
                  value: "Whatsapp Web",
                  child: Text("Whatsapp Web"),
                ),
                const PopupMenuItem(
                  value: "Starred messages",
                  child: Text("Starred messages"),
                ),
                const PopupMenuItem(
                  value: "Settings",
                  child: Text("Settings"),
                ),
              ];
            },
          )
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          ChatPage(
            chatmodels: widget.chatmodels,
            sourchat: widget.sourcechat,
          ),
          const Center(child: Text("STATUS")),
          const Center(child: Text("CALLS")),
        ],
      ),
    );
  }
}
