import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';

class MyInformationCard extends StatelessWidget {
  const MyInformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.stroke),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.person_outline, size: 18, color: AppColors.titleColor),
              SizedBox(width: 8),
              CommonText(
                text: 'John Currim',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.titleColor,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: const [
              Icon(Icons.phone_outlined, size: 18, color: AppColors.titleColor),
              SizedBox(width: 8),
              CommonText(
                text: '+123456789101',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.titleColor,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(Icons.location_on_outlined, size: 18, color: AppColors.titleColor),
              SizedBox(width: 8),
              Expanded(
                child: CommonText(
                  text: '123 Maple Street, Apt 456, Toronto, ON M5A 1A1, Canada',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.titleColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
