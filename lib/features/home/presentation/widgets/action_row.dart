import 'package:bp_ui/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class ActionRow extends StatefulWidget {
  const ActionRow({super.key});

  @override
  State<ActionRow> createState() => _ActionRowState();
}

class _ActionRowState extends State<ActionRow> {
  final actions = ["Services", "Assets", "Fiat", "NFT", "AirDrop"];
  final actionbt = ["Recieve", "Send", "Swap", "Buy"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildActionButton(
              Iconsax.arrow_down4,
              actionbt[0],
              size,
              0,
            ), // Receive
            _buildActionButton(
              Iconsax.arrow_up_3,
              actionbt[1],
              size,
              1,
            ), // Send
            _buildActionButton(
              Iconsax.arrow_swap_horizontal4,
              actionbt[2],
              size,
              2,
            ), // Swap
            _buildActionButton(Iconsax.card, actionbt[3], size, 3), // Buy
            // Sell
          ],
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: actions.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 12.0,
                ),
                child: Text(
                  actions[index],
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    letterSpacing: 1.2,
                    fontWeight: index == 0
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: index == 0 ? Colors.black : Colors.grey,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton(IconData icon, String label, Size size, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        children: [
          Container(
            width: size.width * 0.22,
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 16.0,
            ),
            decoration: BoxDecoration(
              color: index == selectedIndex
                  ? AppColors.backgroundDark
                  : AppColors.lightGrey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Icon(
                  icon,
                  size: 30,
                  color: index == selectedIndex
                      ? AppColors.primaryWhite
                      : AppColors.backgroundDark,
                ),
                const SizedBox(height: 6),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 14,
                    color: index == selectedIndex
                        ? AppColors.primaryWhite
                        : AppColors.backgroundDark,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
