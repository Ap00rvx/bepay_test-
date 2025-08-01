import 'package:bp_ui/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 6,
                children: [
                  const Text(
                    'Wallet balance ',
                    style: TextStyle(
                      color: AppColors.borderLight,
                      fontSize: 16,
                    ),
                  ),
                  Icon(
                    Iconsax.arrow_down_14,
                    size: 10,
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
                      style: GoogleFonts.montserrat(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryBlack,
                      ),
                      children: [
                        TextSpan(
                          text: '08',
                          style: GoogleFonts.montserrat(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: AppColors.borderLight,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "USD",
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryBlack,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Icon(
                          Iconsax.arrow_down_14,
                          color: AppColors.borderLight,
                          size: 13,
                        ),
                      ],
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
                icon: const Icon(Iconsax.refresh, size: 30),
                onPressed: () {
                  // Refresh action
                },
                color: AppColors.borderLight,
              ),
              // world icon
              Icon(Iconsax.global4, size: 35, color: AppColors.borderLight),
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
