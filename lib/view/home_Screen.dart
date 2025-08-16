import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/news_controller.dart';
import '../widget/news_card.dart';
import '../widget/search_widget.dart';
import '../widget/category_filter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsController controller = Get.put(NewsController());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mumbai Press',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.black87),
            onPressed: () => controller.refreshNews(),
          ),
        ],
      ),
      body: Column(
        children: [
          // Search Widget
          SearchWidget(controller: controller),
          
          // Category Filter
          CategoryFilter(controller: controller),
          
          // News Content
          Expanded(
            child: Obx(() {
              if (controller.loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (controller.hasError) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        size: 64,
                        color: Colors.grey,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Error loading news',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        controller.error,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[500],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () => controller.refreshNews(),
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                );
              }

              if (!controller.hasNews) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.article_outlined,
                        size: 64,
                        color: Colors.grey,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'No news articles found',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Try adjusting your search or category filter',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[500],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }

              return RefreshIndicator(
                onRefresh: () => controller.refreshNews(),
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    // Featured News Section
                    if (controller.featuredNews.isNotEmpty) ...[
                      const Text(
                        'Featured News',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 12),
                      ...controller.featuredNews.map((news) => NewsCard(
                        news: news,
                        isFeatured: true,
                      )),
                      const SizedBox(height: 24),
                    ],

                    // Regular News Section
                    if (controller.regularNews.isNotEmpty) ...[
                      const Text(
                        'Latest News',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 12),
                      ...controller.regularNews.map((news) => NewsCard(
                        news: news,
                        isFeatured: false,
                      )),
                    ],

                    // Show all news if no featured section
                    if (controller.featuredNews.isEmpty) ...[
                      ...controller.newsArticles.map((news) => NewsCard(
                        news: news,
                        isFeatured: false,
                      )),
                    ],
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
