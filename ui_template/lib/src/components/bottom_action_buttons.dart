import 'package:flutter/material.dart';

class BottomActionButtons extends StatelessWidget {
  final VoidCallback onCartPressed;
  final VoidCallback onBuyNowPressed;

  const BottomActionButtons({
    super.key,
    required this.onCartPressed,
    required this.onBuyNowPressed,
  });

  @override
  Widget build(BuildContext context) {
    // Primary Color matching the UI design
    const Color buttonColor = Color(0xFF7A81EC);

    return Row(
      children: [
        // Cart / Basket Button
        InkWell(
          onTap: onCartPressed,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 40,
            width: 65,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.shopping_basket_outlined,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
        const SizedBox(width: 12),

        // BUY NOW Button
        Expanded(
          child: SizedBox(
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: onBuyNowPressed,
              child: const Text(
                'BUY NOW',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}