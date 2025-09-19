import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasaned_project/component/button/common_button.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

class VisitorOrderHistorySheet extends StatefulWidget {
  const VisitorOrderHistorySheet({
    super.key,
    required this.statuses,
    required this.initialSelected,
    required this.onApply,
  });

  final List<String> statuses;
  final String? initialSelected;
  final ValueChanged<String?> onApply;

  @override
  State<VisitorOrderHistorySheet> createState() => _VisitorOrderHistorySheetState();
}

class _VisitorOrderHistorySheetState extends State<VisitorOrderHistorySheet> {
  String? _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.initialSelected;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r),
              topRight: Radius.circular(16.r),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                child: Row(
                  children: [
                    const CommonText(
                      text: AppString.filter,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.titleColor,
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        padding: EdgeInsets.all(4.r),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.stroke),
                          color: AppColors.white,
                        ),
                        child: Icon(Icons.close, size: 18.sp, color: AppColors.titleColor),
                      ),
                    ),
                  ],
                ),
              ),

              // Options
              Flexible(
                child: ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  itemCount: widget.statuses.length,
                  separatorBuilder: (_, __) => SizedBox(height: 10.h),
                  itemBuilder: (context, index) {
                    final status = widget.statuses[index];
                    final selected = _selected == status;
                    return InkWell(
                      borderRadius: BorderRadius.circular(10.r),
                      onTap: () => setState(() => _selected = status),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: AppColors.stroke),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommonText(
                              text: status,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.titleColor,
                            ),
                            // Radio visual
                            Container(
                              height: 20.r,
                              width: 20.r,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: selected ? AppColors.primaryColor : AppColors.stroke, width: 2),
                              ),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 150),
                                margin: EdgeInsets.all(3.r),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: selected ? AppColors.primaryColor : Colors.transparent,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

        
         Padding(
           padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
           child: CommonButton(
            titleText: AppString.apply,
            buttonRadius: 60,
            onTap: () {
              widget.onApply(_selected);
            },
           ),
         )  ,

         20.height
         
            ],
          ),
        ),
      ),
    );
  }
}
