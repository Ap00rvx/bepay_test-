import 'package:flutter/material.dart';

class ActionRow extends StatefulWidget {
  const ActionRow({super.key});

  @override
  State<ActionRow> createState() => _ActionRowState();
}

class _ActionRowState extends State<ActionRow> {
  final actions = ["Services", "Assets", "Fiat", "NFT", "AirDrop"];
  final actionbt = ["Recieve", "Send", "Swap", "Buy"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildActionButton(Icons.call_received, actionbt[0]), // Receive
            _buildActionButton(Icons.send, actionbt[1]), // Send
            _buildActionButton(Icons.swap_horiz, actionbt[2]), // Swap
            _buildActionButton(Icons.shopping_cart, actionbt[3]), // Buy
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
                  horizontal: 10.0,
                ),
                child: Text(
                  actions[index],
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1.5,
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

  Widget _buildActionButton(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, size: 28, color: Colors.black),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 14, color: Colors.black)),
      ],
    );
  }
}
