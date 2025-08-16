import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/news_model.dart';
import '../model/menu_model.dart';

class NewsService {
  static const String baseUrl = 'https://mumbaipress.com/wp-json';
  
  // Fetch news articles
  static Future<List<NewsModel>> getNewsArticles({int perPage = 20}) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/wp/v2/posts/?per_page=$perPage&fields=id,date,title,better_featured_image,content,link'),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        return NewsModel.fromJsonList(jsonData);
      } else {
        throw Exception('Failed to load news articles: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching news articles: $e');
    }
  }

  // Fetch menu data
  static Future<MenuModel?> getMenuData() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/wp-api-menus/v2/menus/169'),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        return MenuModel.fromJson(jsonData);
      } else {
        throw Exception('Failed to load menu data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching menu data: $e');
    }
  }

  // Fetch news by category
  static Future<List<NewsModel>> getNewsByCategory(int categoryId, {int perPage = 20}) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/wp/v2/posts/?categories=$categoryId&per_page=$perPage&fields=id,date,title,better_featured_image,content,link'),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        return NewsModel.fromJsonList(jsonData);
      } else {
        throw Exception('Failed to load news by category: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching news by category: $e');
    }
  }

  // Search news articles
  static Future<List<NewsModel>> searchNews(String query, {int perPage = 20}) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/wp/v2/posts/?search=$query&per_page=$perPage&fields=id,date,title,better_featured_image,content,link'),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        return NewsModel.fromJsonList(jsonData);
      } else {
        throw Exception('Failed to search news: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error searching news: $e');
    }
  }
}
