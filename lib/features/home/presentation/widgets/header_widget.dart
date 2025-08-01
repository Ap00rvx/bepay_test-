import 'package:bp_ui/core/theme/app_colors.dart';
import 'package:bp_ui/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: size.height * 0.18,
      width: size.width,
      color: AppTheme.lightTheme.scaffoldBackgroundColor,
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildCard(
            size: size,
            imagePath: 'assets/images/Card page.png',
            backgroundColor: AppColors.slateGrey.withOpacity(0.2),
            alignment: 'top',
            text: 'Sign up for our free newsletter \nand stay up-to-date.',
          ),

          _buildCard(
            size: size,
            imagePath: 'assets/images/card.png',
            backgroundColor: Colors.orange.withOpacity(0.1),
            alignment: 'center',
            text:
                'Sign up for the FREE virtual debit card and spend crypto hassle free anywhere!',
          ),
        ],
      ),
    );
  }

  Widget _buildCard({
    required Size size,
    required String imagePath,
    required String text,
    required Color backgroundColor,
    required String alignment,
  }) {
    return Container(
      width: size.width * 0.85, // Fixed width for horizontal scrolling
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightGrey, width: 1),
        borderRadius: BorderRadius.circular(25),
        color: AppColors.primaryWhite,
      ),
      child: Row(
        children: [
          Container(
            width: size.width * 0.25,
            height: double.infinity,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(12),
            child: Image.asset(
              imagePath,
              fit: alignment == 'top' ? BoxFit.fitWidth : BoxFit.fitHeight,
              height: 20,
              width: 20,
              alignment: alignment == 'top'
                  ? Alignment.topCenter
                  : Alignment.centerLeft,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: AppColors.mediumGrey,
                  child: Icon(
                    Icons.image_not_supported,
                    color: AppColors.primaryWhite,
                    size: 24,
                  ),
                );
              },
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: AppColors.darkGrey,
                fontSize: 14,
                height: 1.4,
              ),
              textAlign: TextAlign.start,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
