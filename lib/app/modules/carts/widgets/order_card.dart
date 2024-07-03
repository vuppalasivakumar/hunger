// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:hunger/app/core/app_config/app_colors.dart';
import 'package:hunger/app/core/app_config/app_sizes.dart';

class OrderCard extends StatelessWidget {
  final String imageUrl;
  final String imageText;
  final String productCount;
  final String productCost;
  final Function() remove;
  final Function() add;

  const OrderCard({
    super.key,
    required this.imageUrl,
    required this.imageText,
    required this.productCount,
    required this.productCost,
    required this.remove,
    required this.add,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: 100.0,
      child: Card(
        child: Center(
          child: ListTile(
            leading: Image.asset(
              imageUrl,
              // fit: BoxFit.contain,
            ),
            title: Text(
              imageText,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: AppSizes.x2_25, fontWeight: FontWeight.bold),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: AppSizes.x4_37,
                  decoration: BoxDecoration(
                    color: AppColors.rustedOrange,
                    borderRadius: BorderRadius.circular(AppSizes.x3_12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        child: IconButton(
                            onPressed: remove,
                            icon: const Icon(
                              Icons.remove,
                              color: AppColors.white,
                              size: AppSizes.x1_50,
                            ),),
                      ),
                      Text(
                        productCount,
                        style: 
                        const TextStyle(color: AppColors.white),
                      ),
                      InkWell(
                        child: IconButton(
                            onPressed: add,
                            icon: const Icon(Icons.add,
                                color: AppColors.white, size: AppSizes.x1_50),),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.currency_rupee,
                  size: AppSizes.x2_50,
                ),
                Text(
                  productCost == "0" ? "   0  " : productCost,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: AppSizes.x2_50, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
