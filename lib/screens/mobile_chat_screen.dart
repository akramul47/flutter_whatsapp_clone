import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/colors.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

import '../models/chat_model.dart';
import '../models/message_model.dart';
import '../utils.dart';
import '../widgets/my_message_card.dart';
import '../widgets/sender_message_card.dart';

class MobileChatScreen extends StatefulWidget {
  const MobileChatScreen({
    super.key,
    required this.chatModel,
    required this.sourchat,
  });
  final ChatModel chatModel;
  final ChatModel sourchat;
  @override
  State<MobileChatScreen> createState() => _MobileChatScreenState();
}

class _MobileChatScreenState extends State<MobileChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool sendButton = false;
  List<MessageModel> messages = [];

  late IO.Socket socket;

  @override
  void initState() {
    super.initState();
    connect();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void connect() {
    socket = IO.io(AppConfig.socketUrl, <String, dynamic>{
      "transports": ["websocket"],
      "autoconnect": "false",
    });
    socket.connect();
    socket.emit("signin", widget.sourchat.id);
    socket.onConnect((data) {
      print("Connected");
      socket.on("message", (msg) {
        print(msg);
        setMessage("destination", msg["message"]);
      });
    });
    print(socket.connected);
  }

  void sendMessage(String message, int sourceId, int targetId) {
    setMessage("source", message);
    socket.emit("message",
        {"message": message, "sourceId": sourceId, "targetId": targetId});
  }

  void setMessage(String type, String message) {
    MessageModel messageModel =
        MessageModel(message: message, type: type);
    setState(() {
      messages.add(messageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: appBarColor,
        title: Text(
          widget.chatModel.name,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
           Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              controller: _scrollController,
              itemCount: messages.length + 1,
              itemBuilder: (context, index) {
                if (index == messages.length) {
                  return Container(
                    height: 70,
                  );
                }
                if (messages[index].type == "source") {
                  return OwnMessageCard(
                    message: messages[index].message,
                  );
                } else {
                  return ReplyCard(
                    message: messages[index].message,
                  );
                }
              },
            ),
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
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 15,
                    ),
                    child: TextField(
                      controller: _controller,
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          setState(() {
                            sendButton = true;
                          });
                        } else {
                          setState(() {
                            sendButton = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey,
                        hintText: 'Type a message',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            )),
                        contentPadding: const EdgeInsets.all(10),
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.emoji_emotions_outlined),
                        ),
                        prefixIconColor: textColor,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.camera_alt_outlined),
                        ),
                        suffixIconColor: textColor,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (sendButton) {
                      sendMessage(_controller.text, widget.sourchat.id,
                          widget.chatModel.id);
                      _controller.clear();
                    }
                  },
                  icon: Icon(
                    sendButton ? Icons.send : Icons.mic,
                    color: Colors.grey,
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
