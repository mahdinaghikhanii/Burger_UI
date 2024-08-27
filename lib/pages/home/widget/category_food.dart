import 'package:flutter/material.dart';

class CategoryFoodWidget extends StatefulWidget {
  const CategoryFoodWidget({super.key});

  @override
  State<CategoryFoodWidget> createState() => _CategoryFoodWidgetState();
}

class _CategoryFoodWidgetState extends State<CategoryFoodWidget> {
  List<String> listCategory = ["Burger", "Pasta", "Salads"];
  int selcetedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        width: 290,
        height: 50,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listCategory.length,
            itemBuilder: (context, index) {
              return Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        setState(() {
                          selcetedIndex = index;
                        });
                      },
                      child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(children: [
                            selcetedIndex == index
                                ? Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    width: 5,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFFE8AF3D)),
                                    height: 5,
                                  )
                                : const SizedBox(),
                            Text(listCategory[index],
                                style: selcetedIndex == index
                                    ? Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(fontSize: 15)
                                    : Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(fontSize: 13))
                          ]))));
            }),
      ),
      const Spacer(),
      IconButton(onPressed: () {}, icon: Image.asset('assets/icon/Filter.png'))
    ]);
  }
}
