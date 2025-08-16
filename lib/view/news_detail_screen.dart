import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';
import '../model/news_model.dart';

class NewsDetailScreen extends StatelessWidget {
  final NewsModel news;

  const NewsDetailScreen({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mumbai Press',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Get.back(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share, color: Colors.black87),
            onPressed: () {
              // TODO: Implement share functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Featured Image
            if (news.betterFeaturedImage?.sourceUrl != null)
              SizedBox(
                width: double.infinity,
                height: 250,
                child: CachedNetworkImage(
                  imageUrl: news.betterFeaturedImage!.sourceUrl!,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    color: Colors.grey[300],
                    child: const Center(child: CircularProgressIndicator()),
                  ),
                  errorWidget: (context, url, error) => Container(
                    color: Colors.grey[300],
                    child: const Icon(Icons.error),
                  ),
                ),
              ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    news.title?.rendered ?? 'No Title',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Date
                  if (news.date != null)
                    Row(
                      children: [
                        const Icon(
                          Icons.access_time,
                          size: 16,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          DateFormat(
                            'MMM dd, yyyy',
                          ).format(DateTime.parse(news.date!)),
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(height: 16),

                  // Content
                  if (news.content?.rendered != null)
                    _buildContent(news.content!.rendered!),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(String content) {
    // Remove HTML tags and decode HTML entities
    String cleanContent = _removeHtmlTags(content);

    return Text(
      cleanContent,
      style: const TextStyle(fontSize: 16, height: 1.6, color: Colors.black87),
    );
  }

  String _removeHtmlTags(String htmlText) {
    // Simple HTML tag removal
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    String cleanText = htmlText.replaceAll(exp, '');

    // Decode common HTML entities
    cleanText = cleanText
        .replaceAll('&amp;', '&')
        .replaceAll('&lt;', '<')
        .replaceAll('&gt;', '>')
        .replaceAll('&quot;', '"')
        .replaceAll('&#39;', "'")
        .replaceAll('&nbsp;', ' ')
        .replaceAll('&hellip;', '...')
        .replaceAll('&mdash;', '—')
        .replaceAll('&ndash;', '–');

    return cleanText.trim();
  }
}
