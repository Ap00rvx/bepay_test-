import 'package:bp_ui/core/theme/app_colors.dart';
import 'package:bp_ui/features/home/data/models/action_model.dart';
import 'package:bp_ui/features/home/presentation/widgets/action_button.dart';
import 'package:bp_ui/features/home/presentation/widgets/action_row.dart';
import 'package:bp_ui/features/home/presentation/widgets/balance_widget.dart';
import 'package:bp_ui/features/home/presentation/widgets/bottom_nav_widget.dart';
import 'package:bp_ui/features/home/presentation/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  int _currentNavIndex = 0;

  final List<ActionModel> actions = [
    ActionModel(
      const Icon(
        Icons.qr_code_scanner,
        size: 24,
        color: AppColors.primaryBlack,
      ),
      'Scan QR & pay\nvia crypto',
    ),
    ActionModel(
      const Icon(
        Icons.account_balance,
        size: 24,
        color: AppColors.primaryBlack,
      ),
      'Cashout',
    ),
    ActionModel(
      const Icon(Icons.card_giftcard, size: 24, color: AppColors.primaryBlack),
      'Send gift',
    ),
    ActionModel(
      const Icon(
        Icons.currency_bitcoin,
        size: 24,
        color: AppColors.primaryBlack,
      ),
      'Bitcoin loan',
    ),
    ActionModel(
      const Icon(Icons.flight, size: 24, color: AppColors.primaryBlack),
      'Travel booking',
    ),
    ActionModel(
      const Icon(Icons.redeem, size: 24, color: AppColors.primaryBlack),
      'Gift cards',
    ),
    ActionModel(
      const Icon(Icons.military_tech, size: 24, color: AppColors.primaryBlack),
      'Invest in gold',
    ),
    ActionModel(
      const Icon(Icons.home_work, size: 24, color: AppColors.primaryBlack),
      'Invest in\nreal estate',
    ),
    ActionModel(
      const Icon(Icons.link, size: 24, color: AppColors.primaryBlack),
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
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
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
