import 'package:flutter/material.dart';

import 'widget/category_food.dart';
import 'widget/list_food.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            leadingWidth: 0,
            titleSpacing: 0,
            centerTitle: false,
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/icon/Menu.png",
                            width: 28, height: 28)),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/icon/notification.png",
                          width: 28,
                          height: 28,
                        ))
                  ]),
            )),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 5),
                child: Text("Every Bite a",
                    style: Theme.of(context).textTheme.titleLarge),
              ),
              Text("Better burger!",
                  style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 30),
              const CategoryFoodWidget(),
              const ListFoodWidget()
            ]),
          ),
        ));
  }
}
