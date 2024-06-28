import 'package:flutter/material.dart';

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
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 35.0,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        child: IconButton(
                            onPressed: remove,
                            icon: const Icon(
                              Icons.remove,
                              size: 12.0,
                            )),
                      ),
                      Text(productCount),
                      InkWell(
                        child: IconButton(
                            onPressed: add,
                            icon: const Icon(
                              Icons.add,
                              size: 12.0,
                            )),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.currency_rupee,
                  size: 20.0,
                ),
                Text(
                  productCost == "0" ? "   0  " : productCost,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontSize: 20.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
