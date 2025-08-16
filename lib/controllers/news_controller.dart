import 'package:get/get.dart';
import '../model/news_model.dart';
import '../model/menu_model.dart';
import '../services/news_service.dart';

class NewsController extends GetxController {
  var newsArticles = <NewsModel>[].obs;
  var menuData = Rxn<MenuModel>();
  var isLoading = false.obs;
  var isError = false.obs;
  var errorMessage = ''.obs;
  var searchQuery = ''.obs;
  var selectedCategory = Rxn<int>();

  @override
  void onInit() {
    super.onInit();
    fetchNewsArticles();
    fetchMenuData();
  }

  // Fetch all news articles
  Future<void> fetchNewsArticles() async {
    try {
      isLoading.value = true;
      isError.value = false;

      final articles = await NewsService.getNewsArticles();
      newsArticles.value = articles;
    } catch (e) {
      isError.value = true;
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  // Fetch menu data
  Future<void> fetchMenuData() async {
    try {
      final menu = await NewsService.getMenuData();
      menuData.value = menu;
    } catch (e) {
      // Error fetching menu data
    }
  }

  // Fetch news by category
  Future<void> fetchNewsByCategory(int categoryId) async {
    try {
      isLoading.value = true;
      isError.value = false;
      selectedCategory.value = categoryId;

      final articles = await NewsService.getNewsByCategory(categoryId);
      newsArticles.value = articles;
    } catch (e) {
      isError.value = true;
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  // Search news articles
  Future<void> searchNews(String query) async {
    if (query.trim().isEmpty) {
      await fetchNewsArticles();
      return;
    }

    try {
      isLoading.value = true;
      isError.value = false;
      searchQuery.value = query;

      final articles = await NewsService.searchNews(query);
      newsArticles.value = articles;
    } catch (e) {
      isError.value = true;
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  // Clear search and show all news
  Future<void> clearSearch() async {
    searchQuery.value = '';
    selectedCategory.value = null;
    await fetchNewsArticles();
  }

  // Refresh news
  Future<void> refreshNews() async {
    if (selectedCategory.value != null) {
      await fetchNewsByCategory(selectedCategory.value!);
    } else if (searchQuery.value.isNotEmpty) {
      await searchNews(searchQuery.value);
    } else {
      await fetchNewsArticles();
    }
  }

  // Get featured news (first 3 articles)
  List<NewsModel> get featuredNews {
    return newsArticles.take(3).toList();
  }

  // Get regular news (remaining articles)
  List<NewsModel> get regularNews {
    return newsArticles.skip(3).toList();
  }

  // Check if there are any news articles
  bool get hasNews => newsArticles.isNotEmpty;

  // Get loading state
  bool get loading => isLoading.value;

  // Get error state
  bool get hasError => isError.value;

  // Get error message
  String get error => errorMessage.value;
}
