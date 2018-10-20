import 'package:flutter/material.dart';
import 'chat_message.dart';
class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => new _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  final TextEditingController _textController = new TextEditingController();
  final List<ChatMessage> _message = <ChatMessage>[];
  void _handleSubmitted(String text){
    _textController.clear();
    ChatMessage message =new ChatMessage(
      text: text,
    );
    setState(() {
      _message.insert(0,message);
    });
  }

  Widget _textComposerWidget(){
    return new Container(
        margin: const EdgeInsets.symmetric(
        horizontal: 8.00
      ),
      child: Row(
        children: <Widget>[
        new Flexible(
            child: new TextField(
            decoration: new InputDecoration.collapsed(
              hintText: "Send a message"
          ),
            controller: _textController,
            onSubmitted: _handleSubmitted,
        ),
        ),
          new Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 4.00,
            ),
            child: new IconButton(
                icon: new Icon(Icons.send),
                color: Colors.blue,
                onPressed: () => _handleSubmitted(_textController.text),
                ),
          )
        ],
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return  new Column(
      children: <Widget>[
        new Flexible(child: new ListView.builder(
            itemBuilder: (_,int index) => _message[index],
            itemCount: _message.length,
            padding: const EdgeInsets.all(5.00) ,
            reverse: true,
        ),
        ),
        new Divider(
        height: 1,
        ),
        new Container(
          decoration: new BoxDecoration(
           color: Theme.of(context).cardColor,
        ),
      child: _textComposerWidget(),
        ),
      ],
    );
  }
}
