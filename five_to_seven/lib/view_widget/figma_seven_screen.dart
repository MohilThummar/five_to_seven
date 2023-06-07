import 'package:five_to_seven/common/category_tile.dart';
import 'package:flutter/material.dart';

class FigmaSevenScreen extends StatefulWidget {
  const FigmaSevenScreen({Key? key}) : super(key: key);

  @override
  State<FigmaSevenScreen> createState() => _FigmaSevenScreenState();
}

class _FigmaSevenScreenState extends State<FigmaSevenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.notifications_none,
                    size: 30,
                    color: Color(0xFFBDBDBD),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 20,
                            color: Color(0xFFFF9D01),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 25,
                            color: Color(0xFFBDBDBD),
                          ),
                        ],
                      ),
                      Text(
                        "9, suramya duplex, nr. nigam bus stand.....",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFFBDBDBD),
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.favorite_border,
                    size: 30,
                    color: Color(0xFFBDBDBD),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 52,
                      color: const Color(0xFF161616),
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.search_rounded,
                            color: Color(0xFFBDBDBD),
                            size: 25,
                          ),
                          SizedBox(width: 15),
                          Text(
                            "Name ur mood...",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFFBDBDBD),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_voice_outlined,
                            color: Color(0xFFBDBDBD),
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    height: 52,
                    width: 52,
                    padding: const EdgeInsets.all(15),
                    color: const Color(0xFF161616),
                    child: Image.asset(
                      "assets/images/images_seven/slider.png",
                      color: const Color(0xFFBDBDBD),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 208,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/images_seven/spices_one.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Get your first order at",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "60% off",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: Color(0xFFFF9D01),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Dive in now.",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFFF9D01),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "*Only available for new foodies.",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "What’s your mood today?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(
                        (0xFFFFFFFF),
                      ),
                    ),
                  ),
                  Text(
                    "view all",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0x0ff7a538),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const SizedBox(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryTile(
                        image: "assets/images/images_seven/samosa.png",
                        name: "Snacks",
                      ),
                      SizedBox(width: 15),
                      CategoryTile(
                        image: "assets/images/images_seven/pizza.png",
                        name: "Pizza",
                      ),
                      SizedBox(width: 15),
                      CategoryTile(
                        image: "assets/images/images_seven/pizza.png",
                        name: "Biryani",
                      ),
                      SizedBox(width: 15),
                      CategoryTile(
                        image: "assets/images/images_seven/pizza.png",
                        name: "Burgers",
                      ),
                      SizedBox(width: 15),
                      CategoryTile(
                        image: "assets/images/images_seven/pizza.png",
                        name: "Chinese",
                      ),
                      SizedBox(width: 15),
                      CategoryTile(
                        image: "assets/images/images_seven/pizza.png",
                        name: "Desserts",
                      ),
                      SizedBox(width: 15),
                      CategoryTile(
                        image: "assets/images/images_seven/pizza.png",
                        name: "Sweets",
                      ),
                      SizedBox(width: 15),
                      CategoryTile(
                        image: "assets/images/images_seven/pizza.png",
                        name: "North Indian",
                      ),
                      SizedBox(width: 15),
                      CategoryTile(
                        image: "assets/images/images_seven/pizza.png",
                        name: "South Indian",
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular moods you can get",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  Text(
                    "view all",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0x0ff7a538),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 135,
                        height: 135,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              width: 135,
                              height: 100,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0x00161616),
                                    Color(0xFFFF9D01),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                "assets/images/images_seven/Domino's_pizza_logo.png",
                                width: 70,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Domino’s",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nearby moods around you",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(
                        (0xFFFFFFFF),
                      ),
                    ),
                  ),
                  Text(
                    "view all",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0x0ff7a538),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                color: const Color(0xFF161616),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 90),
                      child: Image.asset(
                        "assets/images/images_seven/pav.png",
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/images_seven/India_vegetarian.png",
                                width: 30,
                              ),
                              const Text(
                                "Pav Bhaji",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFF9D01),
                                ),
                              )
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Das Kitchen",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                              Text(
                                "₹ 100",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFF9D01),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "North Indian, Snacks",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.watch_later_outlined,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 3),
                              const Text(
                                "25 mins",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                              Container(
                                height: 16,
                                width: 1.8,
                                color: Colors.white,
                              ),
                              const Text(
                                "1 km",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 65,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xFFFF9D01),
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
