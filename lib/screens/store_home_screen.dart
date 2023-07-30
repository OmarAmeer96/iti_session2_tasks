import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iti_flutter_session2/screens/popular_pack_screen.dart';

class StoreHomeScreen extends StatelessWidget {
  const StoreHomeScreen({super.key});

  static String id = 'StoreHomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.grey[300]!,
        buttonBackgroundColor: Colors.green[400],
        animationDuration: const Duration(milliseconds: 300),
        animationCurve: Curves.fastOutSlowIn,
        items: const <Widget>[
          Icon(Icons.home, size: 30),
          Icon(CupertinoIcons.shopping_cart, size: 30),
          Icon(Icons.person, size: 30),
          Icon(Icons.settings, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
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
              _buildCustomCollection(
                "Popular Pack",
                onTap: () {
                  Navigator.pushNamed(context, PopularPackScreen.id);
                },
              ),
              _buildCustomCollection(
                "Our New Item",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildCustomCollection(String title, {required Function onTap}) {
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
              InkWell(
                onTap: () {
                  onTap();
                },
                child: const Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Mulish-Bold",
                    color: Colors.green,
                  ),
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
            itemBuilder: (context, index) => buildCustomCard(context),
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
          backgroundColor: Colors.grey[200],
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
              backgroundColor: Colors.grey[200],
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

  Widget buildCustomCard(BuildContext context) {
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
          borderRadius: BorderRadius.circular(25),
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
              Row(
                children: [
                  const Text(
                    "\$35",
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: "Mulish-Bold",
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  const Text(
                    "50.32",
                    style: TextStyle(
                      fontSize: 16,
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
