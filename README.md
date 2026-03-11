<p align="center">
  <img src="https://raw.githubusercontent.com/Omarsalama2001/Readify/main/assets/icons/app_icon.jpg"
       width="200" 
       alt="Readify Logo"/>
</p>

<h1 align="center">Readify</h1>
<p align="center">
  A Flutter app for browsing and reading books fetched from an API, featuring search, categories, favourites, authors, book reader, and an admin dashboard.
</p>

<p align="center">
  <a href="https://github.com/Omarsalama2001/Readify">
    <img src="https://img.shields.io/badge/GitHub-View%20Code-100000?style=for-the-badge&logo=github&logoColor=white"/>
  </a>
  <img src="https://img.shields.io/badge/Flutter-Mobile-02569B?style=for-the-badge&logo=flutter&logoColor=white"/>
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white"/>
  <img src="https://img.shields.io/badge/REST_API-FF6C37?style=for-the-badge&logo=postman&logoColor=white"/>
</p>

---

## ✨ Features

<table>
  <tr>
    <td align="center" width="50%">
      <h3>📚 Books Browser</h3>
      <p>Browse all books fetched from a <strong>REST API</strong> with a smooth and beautiful UI</p>
    </td>
    <td align="center" width="50%">
      <h3>🔍 Search</h3>
      <p>Search for books by name and filter by <strong>categories</strong> easily</p>
    </td>
  </tr>
  <tr>
    <td align="center" width="50%">
      <h3>📂 Categories</h3>
      <p>Browse books by categories with a <strong>dedicated search</strong> inside each category</p>
    </td>
    <td align="center" width="50%">
      <h3>❤️ Favourites</h3>
      <p>Add books to favourites and access them anytime from the <strong>favourites page</strong></p>
    </td>
  </tr>
  <tr>
    <td align="center" width="50%">
      <h3>📖 Book Reader</h3>
      <p>Read books directly inside the app with <strong>Dark Mode</strong> support</p>
    </td>
    <td align="center" width="50%">
      <h3>📤 Share</h3>
      <p>Share any book with others easily from the <strong>book details page</strong></p>
    </td>
  </tr>
  <tr>
    <td align="center" width="50%">
      <h3>✍️ Authors</h3>
      <p>Browse all authors with their <strong>photos and names</strong></p>
    </td>
    <td align="center" width="50%">
      <h3>⚙️ Admin Dashboard</h3>
      <p>Full admin panel to <strong>add, edit and delete</strong> books and categories</p>
    </td>
  </tr>
  <tr>
    <td align="center" width="50%">
      <h3>🌙 Dark Mode</h3>
      <p>Full <strong>Dark & Light</strong> mode support for a comfortable reading experience</p>
    </td>
    <td align="center" width="50%">
      <h3>📡 No Internet Handling</h3>
      <p>Graceful <strong>offline handling</strong> with a friendly no internet screen</p>
    </td>
  </tr>
</table>

---

## 🛠️ Tech Stack

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white"/>
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white"/>
  <img src="https://img.shields.io/badge/REST_API-FF6C37?style=for-the-badge&logo=postman&logoColor=white"/>
  <img src="https://img.shields.io/badge/Flutter_Bloc-02569B?style=for-the-badge&logo=flutter&logoColor=white"/>
  <img src="https://img.shields.io/badge/Retrofit-009688?style=for-the-badge&logo=dart&logoColor=white"/>
  <img src="https://img.shields.io/badge/Dio-0175C2?style=for-the-badge&logo=dart&logoColor=white"/>
</p>

---

### 📦 Key Packages

<details>
<summary>🔍 View All Packages</summary>

<br/>

#### 🌐 Networking & API
| Package | Description |
|---------|-------------|
| `dio` | HTTP client for API calls |
| `retrofit` | Type-safe REST API client |
| `connectivity_plus` | Monitor internet connection |
| `internet_connection_checker` | Check internet availability |

---

#### 📄 PDF & Sharing
| Package | Description |
|---------|-------------|
| `syncfusion_flutter_pdfviewer` | In-app PDF book reader |
| `share_plus` | Share books with others |

---

#### 💾 Local Storage
| Package | Description |
|---------|-------------|
| `shared_preferences` | Local key-value storage |
| `path_provider` | Local file system access |

---

#### 🎨 UI & UX
| Package | Description |
|---------|-------------|
| `flutter_screenutil` | Responsive UI design |
| `google_fonts` | Custom fonts |
| `lottie` | Beautiful animations |
| `shimmer` | Loading shimmer effect |
| `cached_network_image` | Efficient image caching |
| `carousel_slider` | Image carousel |
| `flutter_rating_bar` | Book rating display |
| `animated_text_kit` | Animated text effects |
| `awesome_dialog` | Beautiful dialogs |

---

#### 🔧 Utilities
| Package | Description |
|---------|-------------|
| `get_it` | Dependency injection |
| `dartz` | Functional programming |
| `equatable` | Value equality |
| `envied` | Secure environment variables |
| `json_annotation` | JSON serialization |

</details>

---

## 🏗️ Architecture

This app is built using **Clean Architecture** pattern:

| Layer | Responsibility |
|-------|---------------|
| 📊 **Data** | Remote data sources, Models, Repository implementations |
| 🧠 **Domain** | Entities, Repository interfaces, Use cases (Business logic) |
| 🎨 **Presentation** | UI Screens, Widgets, Bloc/Cubit State Management |

<details>
<summary>📂 View Full Project Structure</summary>

```
📦 lib
 ├── 📄 bloc_observer.dart
 ├── 📄 injection_container.dart
 ├── 📄 main.dart
 │
 ├── 📂 core
 │   ├── 📂 constants
 │   │   ├── 📄 api_strings.dart
 │   │   └── 📄 cache_keys.dart
 │   ├── 📂 entities
 │   │   └── 📄 book_entity.dart
 │   ├── 📂 error
 │   │   ├── 📄 exeptions.dart
 │   │   └── 📄 faliure.dart
 │   ├── 📂 extensions
 │   ├── 📂 models
 │   │   └── 📄 book_model.dart
 │   ├── 📂 network
 │   │   ├── 📄 network_info.dart
 │   │   └── 📂 connection
 │   │       └── 📂 bloc
 │   ├── 📂 utils
 │   │   ├── 📂 Localization
 │   │   ├── 📂 styles
 │   │   └── 📂 theme
 │   │       └── 📂 cubit
 │   └── 📂 widgets
 │       └── 📂 book_details_widgets
 │
 └── 📂 features
     ├── 📂 admin
     │   ├── 📂 data
     │   ├── 📂 domain
     │   │   └── 📂 use_cases
     │   │       ├── 📄 add_book_usecase.dart
     │   │       ├── 📄 add_category_usecase.dart
     │   │       ├── 📄 delete_book_usecase.dart
     │   │       ├── 📄 delete_category_usecase.dart
     │   │       ├── 📄 update_book_usecase.dart
     │   │       └── 📄 update_category_usecase.dart
     │   └── 📂 presentation
     │       ├── 📂 blocs
     │       ├── 📂 pages
     │       └── 📂 widgets
     │
     ├── 📂 authors
     │   ├── 📂 data
     │   ├── 📂 domain
     │   └── 📂 presentation
     │
     ├── 📂 book_preview
     │   └── 📂 presentation
     │
     ├── 📂 category
     │   ├── 📂 data
     │   ├── 📂 domain
     │   └── 📂 presentation
     │
     ├── 📂 favourites
     │   ├── 📂 data
     │   ├── 📂 domain
     │   └── 📂 presentation
     │
     └── 📂 home
         ├── 📂 data
         ├── 📂 domain
         └── 📂 presentation
```

</details>

---

## 📸 Screenshots

### 🏠 Home & Drawer
<table>
  <tr>
    <td align="center">
      <strong>Home</strong><br/><br/>
      <img src="https://raw.githubusercontent.com/Omarsalama2001/Readify/main/assets/screenshots/home_image-portrait.png" width="220"/>
    </td>
    <td align="center">
      <strong>Drawer</strong><br/><br/>
      <img src="https://raw.githubusercontent.com/Omarsalama2001/Readify/main/assets/screenshots/drawer_image-portrait.png" width="220"/>
    </td>
    <td align="center">
      <strong>No Internet</strong><br/><br/>
      <img src="https://raw.githubusercontent.com/Omarsalama2001/Readify/main/assets/screenshots/no_internet_image-portrait.png" width="220"/>
    </td>
  </tr>
</table>

---

### 🔍 Search
<table>
  <tr>
    <td align="center">
      <strong>Search Books</strong><br/><br/>
      <img src="https://raw.githubusercontent.com/Omarsalama2001/Readify/main/assets/screenshots/search_book_image-portrait.png" width="220"/>
    </td>
    <td align="center">
      <strong>Search Category</strong><br/><br/>
      <img src="https://raw.githubusercontent.com/Omarsalama2001/Readify/main/assets/screenshots/search_category-portrait.png" width="220"/>
    </td>
  </tr>
</table>

---

### 📂 Categories & Authors
<table>
  <tr>
    <td align="center">
      <strong>Categories</strong><br/><br/>
      <img src="https://raw.githubusercontent.com/Omarsalama2001/Readify/main/assets/screenshots/categories_image-portrait.png" width="220"/>
    </td>
    <td align="center">
      <strong>Authors</strong><br/><br/>
      <img src="https://raw.githubusercontent.com/Omarsalama2001/Readify/main/assets/screenshots/authors_image-portrait.png" width="220"/>
    </td>
  </tr>
</table>

---

### 📖 Book Details & Reading
<table>
  <tr>
    <td align="center">
      <strong>Book Details</strong><br/><br/>
      <img src="https://raw.githubusercontent.com/Omarsalama2001/Readify/main/assets/screenshots/book_details_image-portrait.png" width="220"/>
    </td>
    <td align="center">
      <strong>Share</strong><br/><br/>
      <img src="https://raw.githubusercontent.com/Omarsalama2001/Readify/main/assets/screenshots/share_image-portrait.png" width="220"/>
    </td>
    <td align="center">
      <strong>Book Reading</strong><br/><br/>
      <img src="https://raw.githubusercontent.com/Omarsalama2001/Readify/main/assets/screenshots/book_reading_image-portrait.png" width="220"/>
    </td>
    <td align="center">
      <strong>Dark Mode</strong><br/><br/>
      <img src="https://raw.githubusercontent.com/Omarsalama2001/Readify/main/assets/screenshots/book_reading_darkmode_image-portrait.png" width="220"/>
    </td>
  </tr>
</table>

---

### ❤️ Favourites
<table>
  <tr>
    <td align="center">
      <strong>Favourites</strong><br/><br/>
      <img src="https://raw.githubusercontent.com/Omarsalama2001/Readify/main/assets/screenshots/favorite_image-portrait.png" width="220"/>
    </td>
  </tr>
</table>

---

### ⚙️ Admin Dashboard
<table>
  <tr>
    <td align="center">
      <strong>Dashboard</strong><br/><br/>
      <img src="https://raw.githubusercontent.com/Omarsalama2001/Readify/main/assets/screenshots/admin_image-portrait.png" width="220"/>
    </td>
    <td align="center">
      <strong>Dashboard 2</strong><br/><br/>
      <img src="https://raw.githubusercontent.com/Omarsalama2001/Readify/main/assets/screenshots/admin2_image-portrait.png" width="220"/>
    </td>
    <td align="center">
      <strong>Add Book</strong><br/><br/>
      <img src="https://raw.githubusercontent.com/Omarsalama2001/Readify/main/assets/screenshots/add_book_image-portrait.png" width="220"/>
    </td>
    <td align="center">
      <strong>Add Category</strong><br/><br/>
      <img src="https://raw.githubusercontent.com/Omarsalama2001/Readify/main/assets/screenshots/add_category_image-portrait.png" width="220"/>
    </td>
  </tr>
</table>

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK >= 3.1.2
- REST API endpoint

### Installation
1. Clone the repo
   ```bash
   git clone https://github.com/Omarsalama2001/Readify.git
   ```
2. Install dependencies
   ```bash
   flutter pub get
   ```
3. Create `.env` file and add your keys
   ```
   API_BASE_URL=your_api_base_url_here
   ```
4. Run the app
   ```bash
   flutter run
   ```

---

## 📬 Contact

<p align="left">
  <a href="mailto:omarrsalama90111@gmail.com">
    <img src="https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white"/>
  </a>
  <a href="https://www.linkedin.com/in/0marsalama">
    <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"/>
  </a>
  <a href="https://github.com/Omarsalama2001">
    <img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"/>
  </a>
</p>
