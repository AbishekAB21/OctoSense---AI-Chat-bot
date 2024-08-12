import 'package:ai_chat_bot/utils/font_styles.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  final List messages;
  const MessageScreen({super.key, required this.messages});

  @override
  State<MessageScreen> createState() => _MessagesState();
}

class _MessagesState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: widget.messages[index]['isUserMessage']
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(
                          widget.messages[index]['isUserMessage'] ? 0 : 20),
                      topLeft: Radius.circular(
                          widget.messages[index]['isUserMessage'] ? 20 : 0),
                    ),
                    color: widget.messages[index]['isUserMessage']
                        ? Colors.grey.shade800
                        : Colors.grey.shade900.withOpacity(0.8),
                  ),
                  constraints: BoxConstraints(maxWidth: w* 2/3),
                  child: Text(widget.messages[index]['message'].text.text[0], style: FontStyles.ChatTextStyle(),),
                  
                )
              ],
            ),
          );
        },
        separatorBuilder: (_, i) => Padding(padding: EdgeInsets.only(top: 10)),
        itemCount: widget.messages.length);
  }
}
