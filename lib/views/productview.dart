import 'package:flutter/material.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
            child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed('/'); // Navigate to ProductView
                  },
                  child: const SizedBox(
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                Spacer(),
                const Icon(Icons.shopping_bag_outlined),
                const SizedBox(
                  width: 10,
                ),
                const Icon(Icons.more_vert)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Air Jorden I Travis Scott OG',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 350, child: Image.asset('assets/images/shoe.png')),
            Text(
              'Grey leather and rubber Boost 700 V2 "Static" sneakers from adidas YEEZY featuring an almond toe.',
              style: TextStyle(color: Colors.grey.shade500, fontSize: 18),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '₹ 5000 ',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.favorite_border,
                    size: 40,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 290,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'BUY NOW',
                          style: TextStyle(fontSize: 30),
                        ),
                      )),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
