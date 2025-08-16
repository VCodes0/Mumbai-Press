# Mumbai Press News App

A modern Flutter news application that fetches and displays news articles from the Mumbai Press WordPress API.

## Features

- 📰 **Latest News**: Display the most recent news articles
- 🔍 **Search Functionality**: Search through news articles
- 📂 **Category Filtering**: Filter news by categories from the menu API
- 🖼️ **Image Loading**: Cached network images with loading states
- 📱 **Responsive Design**: Modern UI with Material Design
- 🔄 **Pull to Refresh**: Refresh news content
- 📄 **Article Details**: Full article view with HTML content parsing
- ⚡ **State Management**: GetX for efficient state management

## API Endpoints Used

- **News Articles**: `https://mumbaipress.com/wp-json/wp/v2/posts/?per_page=20&fields=id,date,title,better_featured_image,content,link`
- **Menu Data**: `https://mumbaipress.com/wp-api-menus/v2/menus/169`

## Screenshots

The app includes:
- **Home Screen**: Main news feed with search and category filters
- **News Detail Screen**: Full article view with images and content
- **Splash Screen**: App loading screen

## Getting Started

### Prerequisites

- Flutter SDK (3.8.1 or higher)
- Dart SDK
- Android Studio / VS Code

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd Mumbai-Press
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── controllers/
│   └── news_controller.dart      # GetX controller for state management
├── model/
│   ├── menu_model.dart          # Menu data model
│   └── news_model.dart          # News article model
├── services/
│   └── news_service.dart        # API service for fetching data
├── view/
│   ├── home_Screen.dart         # Main home screen
│   ├── news_detail_screen.dart  # Article detail screen
│   └── splash_page.dart         # Splash screen
├── widget/
│   ├── category_filter.dart     # Category filter widget
│   ├── news_card.dart          # News article card widget
│   └── search_widget.dart      # Search functionality widget
└── main.dart                   # App entry point
```

## Dependencies

- **get**: State management and navigation
- **http**: HTTP requests for API calls
- **cached_network_image**: Image caching and loading
- **intl**: Date formatting
- **google_fonts**: Custom typography

## Features in Detail

### News Feed
- Displays latest news articles in a card-based layout
- Featured news section for important articles
- Pull-to-refresh functionality
- Loading states and error handling

### Search
- Real-time search with debouncing
- Search through article titles and content
- Clear search functionality

### Categories
- Dynamic category filtering from WordPress menu
- Horizontal scrollable category chips
- "All" option to show all articles

### Article Details
- Full article view with images
- HTML content parsing and cleaning
- Share functionality (placeholder)
- Responsive layout

## API Integration

The app integrates with WordPress REST API to fetch:
- News articles with featured images
- Menu data for category filtering
- Article content and metadata

## Error Handling

- Network error handling with retry functionality
- Loading states for better UX
- Graceful fallbacks for missing data

## Future Enhancements

- Offline support with local caching
- Push notifications for breaking news
- Bookmark functionality
- Social media sharing
- Dark mode support
- Multi-language support

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is licensed under the MIT License.
