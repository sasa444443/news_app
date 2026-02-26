📰 NewsCloud App

Modern Flutter News Application that displays top headlines by category using real-time API integration.
Built with clean structure, async data handling, and smooth scrolling UI.

📱 Preview
4
🚀 Features

🗞 Fetch Top Headlines by Category

🌍 Real-time API Integration (NewsAPI)

📂 Dynamic Categories (Business, Sports, Health, Technology, etc.)

🔄 FutureBuilder Async Handling

📜 SliverList + CustomScrollView

🎨 Clean & Minimal UI

📱 Fully Responsive Layout

🛠 Tech Stack

Flutter

Dart

Dio (HTTP client)

NewsAPI

Stateless & Stateful Widgets

CustomScrollView + Slivers Architecture

🏗 Project Architecture
lib/
│
├── models/
│   ├── Article_models.dart
│   └── Category_model.dart
│
├── services/
│   └── Class_newservices.dart
│
├── widget/
│   ├── NewsListView.dart
│   ├── NewsListViewBuilder.dart
│   ├── NewsTile.dart
│   └── CategoryCard.dart
│
├── screens/
│   ├── Home_page.dart
│   └── Category_View.dart
│
└── main.dart
🔌 API Integration

Data is fetched using:

https://newsapi.org/v2/top-headlines

Parameters used:

country=us

category

apiKey

Handled with Dio and mapped into ArticleModels.

🧠 Core Concepts Used

FutureBuilder for async UI rendering

SliverList for performance optimization

Clean separation between UI & Services

Model mapping from JSON to Dart Objects

Navigation with MaterialPageRoute

📦 Installation
git clone https://github.com/MustafaSabry1/news_app.git
cd news_app
flutter pub get
flutter run
⚠ Important Note

Add your API key inside:

Class_newservices.dart

Replace:

apiKey=YOUR_API_KEY
📌 Future Improvements

🔐 Add caching (CachedNetworkImage)

🌙 Dark Mode

🧠 State Management (Bloc / Provider)

🔎 Search Feature

📲 Publish on Google Play

🧪 Error UI Improvements

🎯 What This Project Demonstrates

✔ API Integration
✔ Async Programming
✔ Clean UI Structure
✔ Scroll Optimization with Slivers
✔ Modular Project Structure

👨‍💻 Author

Mostafa Sabry
GitHub: https://github.com/MustafaSabry1

Email: promostafa23@gmail.com
