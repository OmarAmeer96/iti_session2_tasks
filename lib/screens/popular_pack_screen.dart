import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/product_data_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PopularPackScreen extends StatelessWidget {
  static String id = 'PopularPackScreen';

  const PopularPackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.7,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.keyboard_backspace_sharp),
          color: Colors.black,
          iconSize: 33,
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Popular Pack",
          style: TextStyle(
            fontFamily: "Mulish-Bold",
            fontSize: 21,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of cards per row
                mainAxisSpacing: 19.0,
              ),
              itemBuilder: (context, index) =>
                  buildCustomCard(context, products[index]),
              itemCount: products.length,
            ),
          ),
          Container(
            width: double.infinity,
            height: 80,
            color: Colors.white,
            child: Center(
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: Colors.green,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.bagShopping,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Create Own Pack",
                      style: TextStyle(
                        fontFamily: "Mulish-SemiBold",
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildCustomCard(BuildContext context, Product product) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: Container(
        width: 184,
        height: 230,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.grey.withOpacity(0.7),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
            vertical: 10,
          ),
          child: Column(
            children: [
              Image.asset(
                product.imageAsset,
                width: 80,
                height: 80,
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontFamily: "Mulish-SemiBold",
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    product.description,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontFamily: "Mulish-SemiBold",
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  Text(
                    "\$${product.price}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: "Mulish-Bold",
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    "\$${product.discountedPrice}",
                    style: const TextStyle(
                      fontSize: 15,
                      fontFamily: "Mulish-SemiBold",
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      showSnackBar(context);
                    },
                    child: const CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Successfully added to the cart!'),
      ),
    );
  }
}
