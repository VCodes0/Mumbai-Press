import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/news_controller.dart';

class SearchWidget extends StatelessWidget {
  final NewsController controller;

  const SearchWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: TextField(
        onChanged: (value) {
          if (value.trim().isEmpty) {
            controller.clearSearch();
          } else {
            // Debounce search
            Future.delayed(const Duration(milliseconds: 500), () {
              if (value == controller.searchQuery.value) {
                controller.searchNews(value);
              }
            });
          }
        },
        decoration: InputDecoration(
          hintText: 'Search news...',
          hintStyle: TextStyle(
            color: Colors.grey[600],
            fontSize: 16,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey[600],
          ),
          suffixIcon: Obx(() {
            if (controller.searchQuery.value.isNotEmpty) {
              return IconButton(
                icon: Icon(
                  Icons.clear,
                  color: Colors.grey[600],
                ),
                onPressed: () {
                  controller.clearSearch();
                },
              );
            }
            return const SizedBox.shrink();
          }),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
        ),
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black87,
        ),
      ),
    );
  }
}
