import 'dart:nativewrappers/_internal/vm/lib/ffi_patch.dart';

import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final Map<String, Object> product;
  const ProductDetailsPage({
    super.key,
   required this.product
   });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(product['title'] as String, 
            style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(product['imageUrl'] as String),
              ),
              SizedBox(height: 24),
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 247, 249, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
                    '₹${product['price']}',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: (product['sizes'] as List<int>).length,
                      itemBuilder: (context, index){
                      final size = (product['sizes'] as List<    int>)[index];
                    
                      return Chip(
                        label: Text(size.toString()),
                      );
                    },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        minimumSize:  Size(double.infinity, 50),
                      ),
                      child: Text(
                        'Add To Cart',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        ),
                    ),
                  )
                ],
                ),
              ),
          ],
          ),
      ),
    );
  }
}