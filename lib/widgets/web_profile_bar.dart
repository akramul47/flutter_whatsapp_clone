import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor,
          ),
        ),
        color: webAppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.comment, color: Colors.grey,),),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert, color: Colors.grey,),),
            ],
          ),
        ],
      ),
    );
  }
}