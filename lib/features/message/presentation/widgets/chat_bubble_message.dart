import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_images.dart';
import '../../../../component/image/common_image.dart';
import '../../../../component/text/common_text.dart';


class ChatBubbleMessage extends StatelessWidget {
  final DateTime time;
  final String text;
  final String image;
  final bool isMe;
  final int index;
  final int messageIndex;

  final VoidCallback onTap;

  const ChatBubbleMessage({
    super.key,
    required this.time,
    required this.text,
    required this.image,
    required this.isMe,
    required this.onTap,
    this.index = 0,
    this.messageIndex = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 17.w, vertical: 12.h),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
                color: isMe?Color(0xFFE7EAED):AppColors.primaryColor                    ),
            padding:  EdgeInsets.symmetric(horizontal: 17.w, vertical: 12.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: CommonText(
                    
                    
                    maxLines: 5,
                    textAlign: TextAlign.start,
                    text: text,
                    fontSize: 18,
                    color:isMe? AppColors.titleColor:AppColors.white,
                  ),
                ),
                
                CommonText(
                    color:isMe?Color(0xFF111827):AppColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    text: "11:08 PM")


              ],
            ),
          ),
        ],
      ),
    );
  }
}
