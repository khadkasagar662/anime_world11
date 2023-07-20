import 'package:flutter/material.dart';

import '../../../constants/global_variable.dart';
import '../screen/categories_screen.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({Key? key}) : super(key: key);

  void navigateToCategoryPage(BuildContext context, String category) {
    Navigator.pushNamed(context, CategoryScreen.routeName, arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final itemWidth = screenWidth * 0.2; // Adjust the value as needed
        final spacing = (screenWidth - (itemWidth * 4)) / 5; // Adjust the value as needed
        final itemHeight = itemWidth + 60; // Adjust the value as needed

        return SizedBox(
          height: itemHeight,
          child: GridView.count(
            crossAxisCount: 4,
            childAspectRatio: 1,
            padding: EdgeInsets.symmetric(horizontal: spacing),
            children: List.generate(GlobalVariables.categoryImages.length, (index) {
              return GestureDetector(
                onTap: () => navigateToCategoryPage(
                  context,
                  GlobalVariables.categoryImages[index]['title']!,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          GlobalVariables.categoryImages[index]['image']!,
                          fit: BoxFit.cover,
                          height: itemWidth,
                          width: itemWidth,
                        ),
                      ),
                    ),
                    Text(
                      GlobalVariables.categoryImages[index]['title']!,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
