import 'package:bp_ui/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavWidget extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNavWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryWhite,
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowLight,
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Container(
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(
                index: 0,
                icon: Iconsax.wallet_24,
                activeIcon: Iconsax.wallet_2,
                label: 'Services',
              ),
              _buildNavItem(
                index: 1,
                icon: Iconsax.card,
                activeIcon: Iconsax.card,
                label: 'Cards',
              ),
              _buildNavItem(
                index: 2,
                icon: Iconsax.scan4,
                activeIcon: Iconsax.scan4,
                label: 'Scan & Pay',
              ),
              _buildNavItem(
                index: 3,
                icon: Iconsax.global4,
                activeIcon: Iconsax.global4,
                label: 'Explore',
              ),
              _buildNavItem(
                index: 4,
                icon: Iconsax.gift4,
                activeIcon: Iconsax.gift4,
                label: 'Rewards',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required IconData icon,
    required IconData activeIcon,
    required String label,
  }) {
    final isActive = currentIndex == index;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              isActive ? activeIcon : icon,
              color: isActive ? AppColors.primaryBlack : AppColors.mediumGrey,
              size: 24,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 10,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
                color: isActive ? AppColors.primaryBlack : AppColors.mediumGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
