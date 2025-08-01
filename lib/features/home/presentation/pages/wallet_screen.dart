import 'package:bp_ui/core/theme/app_colors.dart';
import 'package:bp_ui/features/home/data/models/action_model.dart';
import 'package:bp_ui/features/home/presentation/widgets/action_button.dart';
import 'package:bp_ui/features/home/presentation/widgets/action_row.dart';
import 'package:bp_ui/features/home/presentation/widgets/balance_widget.dart';
import 'package:bp_ui/features/home/presentation/widgets/bottom_nav_widget.dart';
import 'package:bp_ui/features/home/presentation/widgets/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  int _currentNavIndex = 0;

  final List<ActionModel> actions = [
    ActionModel(
      Image.asset(
        'assets/images/Scan and pay icon 2.png',
        width: 30,
        height: 30,
        fit: BoxFit.fill,
      ),
      'Scan QR & pay\nvia crypto',
    ),
    ActionModel(
      Image.asset(
        'assets/images/Bank account icon.png',
        width: 30,
        height: 30,
        fit: BoxFit.fill,
      ),
      'Cashout',
    ),
    ActionModel(
      Image.asset(
        'assets/images/Gift card icon.png',
        width: 30,
        height: 30,
        fit: BoxFit.fill,
      ),
      'Send gift',
    ),
    ActionModel(
      Image.asset(
        'assets/images/BTC backed loan icon.png',
        width: 30,
        height: 30,
      ),
      'Bitcoin loan',
    ),
    ActionModel(
      Image.asset(
        'assets/images/Travel icon 3.png',
        width: 30,
        height: 30,
        fit: BoxFit.fill,
      ),
      'Travel booking',
    ),
    ActionModel(
      Image.asset(
        'assets/images/Gift icon.png',
        width: 30,
        height: 30,
        fit: BoxFit.fill,
      ),
      'Gift cards',
    ),
    ActionModel(
      Image.asset(
        'assets/images/gold.png',
        width: 30,
        height: 30,
        fit: BoxFit.fill,
      ),
      'Invest in gold',
    ),
    ActionModel(
      Image.asset(
        'assets/images/real_estate.png',
        width: 30,
        height: 30,
        fit: BoxFit.fill,
      ),
      'Invest in\nreal estate',
    ),
    ActionModel(
      Image.asset(
        'assets/images/Palla finance logo.png',
        // add grey scale
        color: AppColors.mediumGrey,
        width: 30,
        height: 30,
      ),
      'Palla integration',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: SafeArea(
        child: Column(
          children: [
            const HeaderWidget(),
            const BalanceWidget(),
            ActionRow(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                  ),
                  itemCount: actions.length,
                  itemBuilder: (context, index) {
                    final action = actions[index];
                    return ActionButtonWidget(
                      icon: action.icon,
                      label: action.label,
                      onTap: () {
                        // Handle action tap
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('${action.label} tapped'),
                            duration: const Duration(seconds: 1),
                            backgroundColor: AppColors.primaryBlack,
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavWidget(
        currentIndex: _currentNavIndex,
        onTap: (index) {
          setState(() {
            _currentNavIndex = index;
          });
        },
      ),
    );
  }
}
