import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SafeArea(
        bottom: false,
        child: Container(
          color: Colors.deepPurple,
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Text(
                'Cat breeds',
                style: TextStyle(color: colors.onPrimary, fontSize: 25),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: colors.onPrimary,
                  )),
            ],
          ),
        ));
  }
}
