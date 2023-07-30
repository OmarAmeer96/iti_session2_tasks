import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  static String id = 'CardScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Image.asset(
                    "assets/images/WhatsApp Image 2023-07-30 at 13.02.56.png"),
              ),
              _buildCustomCollection("Popular Pack"),
              _buildCustomCollection("Our New Item"),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildCustomCollection(String title) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: "Mulish-SemiBold",
                ),
              ),
              const Spacer(),
              const Text(
                "View All",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Mulish-Bold",
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 231,
          child: ListView.builder(
            itemBuilder: (context, index) => _buildCustomCard(),
            scrollDirection: Axis.horizontal,
            itemCount: 20,
          ),
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.grey[300],
          child: const Icon(
            Icons.search,
            size: 30,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          width: 5,
        )
      ],
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: const Icon(
                Icons.list,
                size: 30,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      centerTitle: true,
      titleSpacing: 50,
      title: const Row(
        children: [
          Icon(
            Icons.location_on_outlined,
            color: Colors.black,
            size: 26,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                "Current Location",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Text(
                "Tanta, Egypt",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.keyboard_arrow_down,
                size: 26,
                color: Colors.grey,
              ),
              SizedBox(
                height: 18,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCustomCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 184,
        height: 230,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.grey.withOpacity(0.7),
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 15,
          ),
          child: Column(
            children: [
              Image.asset(
                "assets/images/Fruit.png",
                width: 90,
                height: 90,
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [
                  Text(
                    "Bundle Pack",
                    style: TextStyle(
                      fontFamily: "Mulish-SemiBold",
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    "Onion, Oil, Salt...",
                    style: TextStyle(
                      fontFamily: "Mulish-SemiBold",
                      fontSize: 17,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              const Row(
                children: [
                  Text(
                    "\$35",
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: "Mulish-Bold",
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "50.32",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Mulish-SemiBold",
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
