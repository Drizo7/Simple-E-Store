import 'package:flutter/material.dart';
import '../resources//constants.dart';
import '../resources//lists.dart';
import 'details.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
       _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Constants.newColor,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: kToolbarHeight,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Pamsika",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              right: 50,
                              child: GestureDetector(
                                        onTap: () {
                                            Navigator.pop(context);
                                                  },
                              child: const Icon(
                                Icons.shopping_cart,
                                size: 30,
                                color: Colors.black,
                              ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),

                  Container(
                    margin: const EdgeInsets.only(left: 20,right: 20),
                    height: 42,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Row(
                    children: [
                      Expanded(child:
                        TextFormField(
                          enabled: true,
                          decoration:
                        InputDecoration(
                          prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.black,
                          ),
                          border: InputBorder.none,
                          hintText: "Search store...",
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(.3),
                            fontSize: 14,
                                    ),

                           ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.filter_list, size: 25, color: Colors.black),
                        onPressed: (){

                        },
                      ),
                     ],
                    ),
                  ),



                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                      height: 30,
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                names[index],
                                style: TextStyle(
                                    color: category[index]
                                        ? Colors.orange
                                        : Colors.white.withOpacity(.4),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                            ),
                          );
                        },
                      )),
                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height - 200.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                      color: Constants.insideColor,
                    ),
                    padding: const EdgeInsets.only(top:20, left: 20),
                    child:SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Featured",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 250,
                            width: double.infinity,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 9,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Details(index),
                                        ));
                                  },
                                  child: Card(
                                    elevation: 20,
                                    color: Colors.white.withOpacity(.1),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20)),
                                    margin: const EdgeInsets.only(right: 20),
                                    child: Container(
                                      padding: const EdgeInsets.all(15),
                                      width: 155,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: SizedBox(
                                              height: 120,
                                              width: double.infinity,
                                              child: Stack(
                                                children: [
                                                  Positioned.fill(
                                                      child: Image(
                                                        image: images[index],
                                                        fit: BoxFit.cover,
                                                      )),
                                                  Align(
                                                    alignment: Alignment.topRight,
                                                    child: Container(
                                                      height: 25,
                                                      width: 50,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black
                                                            .withOpacity(.7),
                                                        borderRadius:
                                                        const BorderRadius.only(
                                                            bottomLeft:
                                                            Radius.circular(
                                                                10)),
                                                      ),
                                                      child: const Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color: Colors.orange,
                                                            size: 14,
                                                          ),
                              /*                            Text(
                                                            ratting[index].toString(),
                                                            style: const TextStyle(
                                                                color: Colors.white,
                                                                fontWeight:
                                                                FontWeight.bold),
                                                          )*/
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 14,
                                          ),
                                          Text(names[index],
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                              )),
                                          /*const SizedBox(
                                            height: 3,
                                          ),
                                          Text(with_[index],
                                              style: TextStyle(
                                                color: Colors.white.withOpacity(.5),
                                                fontSize: 15,
                                              )),*/
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              const Align(
                                                alignment: Alignment.topLeft,
                                                child: Text("\$ ",
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold)),
                                              ),
                                              Text(prices[index],
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text("Special for you",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          specialCard(images[5]),
                          const SizedBox(
                            height: 20,
                          ),
                          specialCard(images[6]),
                          const SizedBox(
                            height: 20,
                          ),
                          specialCard(images[7]),
                        ],
                      ),
                    ),
                  )
                ],
              ),

          ),
        ],
      ),
    );
  }
  Widget specialCard(AssetImage asset) {
    return Card(
      color: Colors.white.withOpacity(.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 120,
        width: double.infinity,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: double.infinity,
                width: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(image: asset, fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Column(
              children: [
                Text(
                  "Gadgets for you\nEnjoy!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
