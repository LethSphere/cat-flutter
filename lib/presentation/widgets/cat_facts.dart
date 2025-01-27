

import 'package:flutter/material.dart';

class CatFacts extends StatelessWidget {
  const CatFacts({super.key});



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Card( 
        child: Row(
          children: [
            const Text('Cat Facts', style: TextStyle(fontSize: 25)),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon:  const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
  
}