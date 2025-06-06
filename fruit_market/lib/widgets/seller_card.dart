import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_market/constants/app_colors.dart';
import 'package:fruit_market/widgets/dot.dart';

Widget sellerCard({
  required int index,
  required VoidCallback onTap,
}) {
  final status = index == 1 ? 'Close' : 'Open';
  final color = status == 'Open' ? Colors.green : Colors.red;
  final category = index == 0
      ? 'Beverages'
      : index == 1
          ? 'Pizza'
          : 'Fried Chicken';
  final fee = index == 2 ? 'Free' : '0.5 KD';

  return InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(12),
    child: Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              backgroundImage: AssetImage('assets/images/seller_pic.png'),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Seller name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/motorcycle.svg',
                        width: 20,
                        height: 14,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Delivery Charges: $fee',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      dot(),
                      Text(status, style: TextStyle(color: color, fontSize: 12)),
                      dot(),
                      Text(
                        category,
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.accent,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  '4.5',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const Text(
                      '2.5 KM',
                      style: TextStyle(fontSize: 12, color: AppColors.primary),
                    ),
                    const SizedBox(width: 4),
                    SvgPicture.asset(
                      'assets/icons/path.svg',
                      width: 10,
                      height: 12,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}


