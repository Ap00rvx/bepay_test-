import 'package:bp_ui/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  const Text(
                    'Wallet balance ',
                    style: TextStyle(
                      color: AppColors.borderLight,
                      fontSize: 16,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down_rounded,
                    color: AppColors.borderLight,
                  ),

                  Icon(
                    Icons.remove_red_eye_outlined,
                    color: AppColors.borderLight,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                spacing: 7,
                children: [
                  RichText(
                    text: TextSpan(
                      text: '1450.',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryBlack,
                      ),
                      children: [
                        TextSpan(
                          text: '08',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: AppColors.borderLight,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "USD",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryBlack,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              // refress icon
              IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () {
                  // Refresh action
                },
                color: AppColors.borderLight,
              ),
              // world icon
              Icon(Icons.language, color: AppColors.borderLight),
              // profile
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/pfp.png",
                  height: 50,
                  width: 50,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
