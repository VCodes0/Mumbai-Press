import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';
import '../model/news_model.dart';
import '../view/news_detail_screen.dart';

class NewsCard extends StatelessWidget {
  final NewsModel news;
  final bool isFeatured;

  const NewsCard({super.key, required this.news, this.isFeatured = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => NewsDetailScreen(news: news)),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.1),
              spreadRadius: 1,
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            if (news.betterFeaturedImage?.sourceUrl != null)
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
                child: Container(
                  height: isFeatured ? 200 : 160,
                  width: double.infinity,
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
              ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    news.title?.rendered ?? 'No Title',
                    style: TextStyle(
                      fontSize: isFeatured ? 18 : 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      height: 1.3,
                    ),
                    maxLines: isFeatured ? 3 : 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),

                  // Excerpt
                  if (news.excerpt?.rendered != null)
                    Text(
                      _removeHtmlTags(news.excerpt!.rendered!),
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        height: 1.4,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  const SizedBox(height: 12),

                  // Date and read more
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (news.date != null)
                        Row(
                          children: [
                            const Icon(
                              Icons.access_time,
                              size: 14,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              DateFormat(
                                'MMM dd, yyyy',
                              ).format(DateTime.parse(news.date!)),
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      Text(
                        'Read More',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue[600],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
