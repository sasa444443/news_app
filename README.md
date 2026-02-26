📰 NewsCloud – Production Ready Flutter News App

A scalable Flutter news application built with clean structure and real-world API integration.

NewsCloud is a modular Flutter application that delivers real-time top headlines categorized by topic.
The app demonstrates strong understanding of API consumption, asynchronous programming, UI composition using Slivers, and scalable project structure.

🚀 Live Features

🗂 Category-based news filtering

🌐 REST API integration (NewsAPI)

⚡ Efficient asynchronous data handling

📜 Sliver-based scroll architecture

🖼 Network image rendering with null safety

🔄 Error & loading state handling

📱 Responsive & smooth UI

🧠 Technical Highlights

✔ Clean separation of concerns (Models – Services – UI)
✔ Reusable widgets
✔ FutureBuilder state management
✔ Dio for scalable network handling
✔ Structured navigation
✔ Null safety applied properly

🏗 Project Architecture

The app follows a layered structure to keep logic separated and scalable:

lib/
│
├── models/        → Data models (Article, Category)
├── services/      → API communication layer
├── widget/        → Reusable UI components
├── screens/       → App screens
└── main.dart      → Entry point
🛠 Tech Stack

Flutter (Latest Stable)

Dart

Dio (HTTP Client)

RESTful API

CustomScrollView & Slivers

🎯 Engineering Decisions

Used Slivers for better scroll performance and flexibility.

Isolated API logic inside a service class.

Implemented Future caching inside initState() to avoid unnecessary rebuild calls.

Used nullable fields in model to prevent runtime crashes.

🚧 Possible Enhancements (To Reach Mid-Level)

🔐 Secure API key using .env

🧠 Apply Clean Architecture (Data / Domain / Presentation)

📦 Introduce State Management (Bloc / Cubit)

🖼 Use CachedNetworkImage

🌙 Implement Dark Mode

🔎 Add Search Feature

🧪 Add Unit Testing

📦 Installation
git clone https://github.com/sasa444443/news_app
cd news_app
flutter pub get
flutter run
👨‍💻 Author

Mostafa Sabry
Flutter Developer
GitHub:https://github.com/sasa444443

Email: promostafa23@gmail.com
