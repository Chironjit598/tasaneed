import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import '../controller/resale_art_controller.dart';

class ResaleConditionField extends StatelessWidget {
  const ResaleConditionField({super.key, required this.controller});
  final ResaleArtController controller;

  @override
  Widget build(BuildContext context) {
    final key = GlobalKey();
    return GestureDetector(
      key: key,
      onTap: () async {
        final box = (key.currentContext!.findRenderObject() as RenderBox);
        final overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
        final position = RelativeRect.fromRect(
          Rect.fromLTWH(
            box.localToGlobal(Offset.zero).dx,
            box.localToGlobal(Offset.zero).dy + box.size.height,
            box.size.width,
            box.size.height,
          ),
          Offset.zero & overlay.size,
        );
        final selected = await showMenu<String>(
          context: context,
          position: position,
          items: controller.conditions
              .map((e) => PopupMenuItem<String>(value: e, child: CommonText(text: e)))
              .toList(),
        );
        if (selected != null) controller.setCondition(selected);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
        decoration: BoxDecoration(












          
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: Colors.black.withOpacity(.08)),
        ),
        child: Row(
          children: [
            Expanded(
              child: CommonText(
                textAlign: TextAlign.left,
                text: controller.condition.value.isEmpty ? AppString.chooseCondition : controller.condition.value,
                color: AppColors.titleColor.withOpacity(controller.condition.value.isEmpty ? .5 : 1),
              ),
            ),
            const Icon(CupertinoIcons.chevron_down)
          ],
        ),
      ),
    );
  }
}
