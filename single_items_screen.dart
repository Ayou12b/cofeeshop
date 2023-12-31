import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItemScreen extends StatelessWidget {
  String img;
  SingleItemScreen(this.img);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 30, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Image.asset(
                    "images/$img.jpg",
                    width: MediaQuery.of(context).size.width / 1.2,
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 40),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "BEST COFFEE",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.4),
                            letterSpacing: 3,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          img,
                          style: const TextStyle(
                              fontSize: 30,
                              letterSpacing: 1,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 25),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(15),
                                width: 120,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.2),
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      CupertinoIcons.minus,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      "2",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(width: 15),
                                    Icon(
                                      CupertinoIcons.minus,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              const Text(
                                "\$2.90",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "A cappuccino is an approximalety 150 ml (5 oz) beverage, with 25 ml of expresso coffee and 85 ml of the fresh milk",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.4),
                          ),
                        ),
                        SizedBox(height: 20),
                        const Row(
                          children: [
                            Text(
                              "Size:",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "150 ml",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 60),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 50),
                                decoration: BoxDecoration(
                                  color: Colors.brown,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: const Text(
                                  "buy now",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Icon(Icons.favorite_outline,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
