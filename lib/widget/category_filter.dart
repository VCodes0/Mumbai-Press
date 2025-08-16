import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/news_controller.dart';
import '../model/menu_model.dart';

class CategoryFilter extends StatelessWidget {
  final NewsController controller;

  const CategoryFilter({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.menuData.value == null) {
        return const SizedBox.shrink();
      }

      final menuItems = controller.menuData.value!.items ?? [];
      
      return Container(
        height: 50,
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: menuItems.length + 1, // +1 for "All" option
          itemBuilder: (context, index) {
            if (index == 0) {
              // "All" option
              return _buildCategoryChip(
                title: 'All',
                isSelected: controller.selectedCategory.value == null,
                onTap: () => controller.clearSearch(),
              );
            }
            
            final menuItem = menuItems[index - 1];
            final categoryId = menuItem.categoriesId;
            final isSelected = controller.selectedCategory.value == categoryId;
            
            return _buildCategoryChip(
              title: menuItem.title ?? 'Unknown',
              isSelected: isSelected,
              onTap: () {
                if (categoryId != null) {
                  controller.fetchNewsByCategory(categoryId);
                }
              },
            );
          },
        ),
      );
    });
  }

  Widget _buildCategoryChip({
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue[600] : Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? Colors.blue[600]! : Colors.grey[300]!,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black87,
              fontSize: 14,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
