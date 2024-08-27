import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          margin: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
          width: MediaQuery.sizeOf(context).width,
          height: 60,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFDAC440)),
              onPressed: () {},
              child: Center(
                child: Text(
                  "Add to cart",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              )),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: false,
          leadingWidth: 0,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back, color: Colors.white)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_horiz, color: Colors.white))
                ]),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Image.asset("assets/image/burger_detail.png",
                fit: BoxFit.cover, height: 320),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 15),
              child: Text("Fresh Beef Burger with cheese",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 24)),
            ),
            Text(
                "Burger with a huge park cutlet, pickled cucumbers, blue onions, grilled vegetables (gree beans, bell peppers, carrots), oyster dressing, black cuttlefish ink bun.",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.grey, fontSize: 16)),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 40),
                    width: 180,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                        Text(
                          "1",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total price",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.grey, fontSize: 12)),
                        const SizedBox(height: 4),
                        Text("\$19.00",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontSize: 22)),
                      ])
                ],
              ),
            )
          ]),
        ));
  }
}
