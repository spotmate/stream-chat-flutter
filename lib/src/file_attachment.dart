import 'package:flutter/material.dart';
import 'package:stream_chat/stream_chat.dart';
import 'package:stream_chat_flutter/src/stream_svg_icon.dart';
import 'package:stream_chat_flutter/src/utils.dart';

class FileAttachment extends StatelessWidget {
  final Attachment attachment;
  final Size size;

  const FileAttachment({
    Key key,
    @required this.attachment,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          launchURL(context, attachment.assetUrl);
        },
        child: Container(
          width: size?.width ?? 100,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: ListTile(
            dense: true,
            leading: Container(child: Placeholder(), height: 40.0,
              width: 33.33,),
            title: Text('Demo', style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
            subtitle: Text('Demo', style: TextStyle(
              color: Colors.black.withOpacity(0.5),
            ),),
            trailing: IconButton(
              icon: StreamSvgIcon.down(
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ),
        ),
      ),
    );
  }
}
