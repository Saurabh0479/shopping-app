import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> filters = const [
    'All',
    'Nike',
    'Addidas',
    'One8',
    'Puma',
    'Bata',
  ];
  late String selectedFilter;

  @override
  void initState(){
    super.initState();
    selectedFilter = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(225, 225, 225, 1)),
      borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Shoes\nCollection',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: border,
                      enabledBorder: border,
                      focusedBorder: border,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                itemCount: filters.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final filter = filters[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      ),
                    child: GestureDetector(
                      onTap: (){
                        selectedFilter = filter;
                      },
                      child: Chip(
                        backgroundColor: selectedFilter == filter
                         ? Theme.of(context).colorScheme.primary
                          : Color.fromRGBO(245, 247, 249, 1),
                        side: BorderSide(
                        color: Color.fromRGBO(245, 247, 249, 1),
                        ),
                        label: Text(filter),
                        labelStyle: TextStyle(
                          fontSize: 16,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
