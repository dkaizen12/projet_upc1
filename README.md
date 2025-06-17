# 📱 Stories +243 – Plateforme mobile culturelle & sociale de Kinshasa 🇨🇩

Bienvenue dans **Stories +243**, un projet académique Flutter 2024-2025, visant à créer une **application mobile communautaire** dédiée à la **culture, l’actualité et les récits urbains de Kinshasa**.

---

## 📌 Présentation du projet

🎯 **Objectif principal**  
Créer une application mobile où les Kinois peuvent **publier, consulter et partager** des contenus informatifs, culturels et sociaux (articles, récits, infos courtes, etc.).

👥 **Public cible**
- Habitants de Kinshasa
- Blogueurs, journalistes, artistes
- Jeunes adultes, utilisateurs de réseaux sociaux

---

## ✨ Fonctionnalités prévues

| Catégorie           | Fonctionnalité principale                                       |
|---------------------|------------------------------------------------------------------|
| 🔐 Authentification | Inscription / Connexion (email, numéro, Google)                |
| 🏠 Accueil          | Feed personnalisé avec publications à lire                     |
| 📚 Publications     | Articles interactifs (texte, image, auteur, thème, réactions)  |
| 💬 Réactions        | Like, commentaire, partage, favoris                            |
| 🔎 Recherche        | Par publications ou profils                                    |
| 📁 Thématiques      | Filtrage dynamique des contenus                                 |
| 📥 Favoris          | Sauvegarde des contenus à relire                               |
| 👤 Profil           | Bio, publications, abonnés, abonnements                        |
| ⚙️ Paramètres       | Thème, notifications, aide, politique                          |
| 🔔 Notifications    | Système de push intégré via Firebase                           |

---

## 📱 Captures de maquettes

> 🔧 Interface basée sur un design Material moderne  
> 🎨 Thème clair/sombre intégré  
> 📊 Navigation intuitive avec `BottomNavigationBar` et `Drawer` latéral

*(Maquettes disponibles dans `/doc/` ou en annexe de ce dépôt)*

---

## 🧱 Structure du projet

Voici une **structure Flutter organisée** pour séparer proprement la logique, les vues et les services :

```bash
lib/
├── main.dart                      # Point d’entrée
├── routes/                        # Gestion des routes de navigation
│   └── app_routes.dart
├── config/                        # Thèmes, couleurs, constantes
│   ├── app_theme.dart
│   ├── app_colors.dart
│   └── constants.dart
├── models/                        # Modèles de données
│   ├── user_model.dart
│   ├── post_model.dart
│   ├── notification_model.dart
├── services/                      # Connexions à Firebase & logique métier
│   ├── auth_service.dart
│   ├── post_service.dart
│   ├── firestore_service.dart
├── controllers/                   # Contrôleurs d’état (Provider, GetX…)
│   ├── auth_controller.dart
│   ├── post_controller.dart
├── views/                         # Interfaces utilisateurs
│   ├── auth/ (login/register)
│   ├── accueil/ (feed, détail post)
│   ├── profil/
│   ├── favoris/
│   ├── notifications/
│   ├── recherche/
│   └── settings/
├── widgets/                       # Composants réutilisables
│   ├── post_card.dart
│   ├── custom_appbar.dart
│   ├── drawer_menu.dart
│   ├── loading_indicator.dart
│   └── story_preview.dart

Voici un **plan d’apprentissage et d’application sur 10 jours** spécialement conçu pour t’aider à construire ton projet Flutter “Stories +243”, tout en apprenant de manière structurée. Chaque jour mêle **théorie** (apprentissage) et **pratique directe** (application dans ton projet).

---

## 🗓️ Plan de Réalisation du Projet “Stories +243” en 10 Jours

---

### 📅 Jour 1 : Initialisation du projet + Introduction à Flutter/Firebase

**🎓 Apprentissage :**

* Comprendre le cycle de vie d’une app Flutter.
* Structure de projet Flutter.
* Qu’est-ce que Firebase ? Quels modules utiliser ?

**🛠 Application :**

* `flutter create projet_upc1`
* Organisation de l’arborescence (`views`, `models`, `services`, etc.)
* Initialisation Firebase Console.
* Ajout de `google-services.json` dans `/android/app`.

---

### 📅 Jour 2 : Authentification Firebase (email + Google)

**🎓 Apprentissage :**

* Firebase Auth (email/password & Google Sign-In)
* Notion de `Future`, `async/await`

**🛠 Application :**

* Création des vues : `login_view.dart` et `register_view.dart`
* Intégration de `firebase_auth` et `google_sign_in`
* Formulaires d’inscription et de connexion fonctionnels
* Redirection vers `home_view` après connexion

---

### 📅 Jour 3 : Accueil & layout principal (Scaffold, AppBar, Drawer)

**🎓 Apprentissage :**

* Widgets `Scaffold`, `AppBar`, `Drawer`
* Navigation Flutter (`Navigator`, `routes.dart`)
* `BottomNavigationBar`, `TabBar`

**🛠 Application :**

* Création de `home_view.dart`
* Ajout de `AppBar`, menu latéral (`Drawer`)
* Implémentation navigation vers `Profil`, `Favoris`, `Paramètres`

---

### 📅 Jour 4 : Création et affichage des publications (modèles + Firestore)

**🎓 Apprentissage :**

* Firestore : lecture/écriture, collections, documents
* Modèles Dart (`post_model.dart`)
* `StreamBuilder` vs `FutureBuilder`

**🛠 Application :**

* Création du modèle `Post`
* Création du service `PostService`
* Affichage en temps réel des posts dans `home_view` avec `StreamBuilder`

---

### 📅 Jour 5 : Détail de publication et interactions sociales

**🎓 Apprentissage :**

* Navigation dynamique avec arguments (`Navigator.push`)
* Boutons d’interaction (like, favoris, commentaires)
* `Cloud Firestore` pour stocker les réactions

**🛠 Application :**

* `post_card.dart` + `post_detail_view.dart`
* Boutons ❤️ 🔁 💬 avec compteurs dans Firestore
* Widget commentaires avec `ListView`

---

### 📅 Jour 6 : Thématiques, Recherche et Favoris

**🎓 Apprentissage :**

* `ListView.builder`, `ListView horizontal`
* `TextField` avec `onChanged` pour recherche dynamique
* Firestore queries (`where`, `orderBy`)

**🛠 Application :**

* Barre thématique défilante
* `search_view.dart` pour posts et utilisateurs
* `favorites_view.dart` pour sauvegarder et retrouver ses contenus

---

### 📅 Jour 7 : Profil utilisateur

**🎓 Apprentissage :**

* Relations entre utilisateurs (publications, favoris)
* `StreamBuilder` sur les données utilisateurs
* Gestion des états : `Provider`

**🛠 Application :**

* `profile_view.dart` avec photo, bio, publications
* Ajout / suppression de favoris
* Vue publique et vue personnelle du profil

---

### 📅 Jour 8 : Notifications + Paramètres + Thèmes

**🎓 Apprentissage :**

* Notifications push avec `firebase_messaging`
* `ThemeData`, `darkTheme`, `ThemeMode`
* Sauvegarde de thème via `shared_preferences`

**🛠 Application :**

* `settings_view.dart` avec gestion du thème
* Intégration notifications (au moins locale ou test push)
* Composant `CustomAppBar` avec badge de notification

---

### 📅 Jour 9 : Animations et UI Responsive

**🎓 Apprentissage :**

* `Hero`, `AnimatedSwitcher`, `AnimatedOpacity`, `Tween`
* `MediaQuery`, `LayoutBuilder`, `Wrap`, `Expanded`

**🛠 Application :**

* Animation entre card ↔ détail
* Transitions animées dans navigation
* Adaptabilité tablette / téléphone

---

### 📅 Jour 10 : Tests + Build final + Déploiement GitHub / APK

**🎓 Apprentissage :**

* Tests : `flutter_test`, `testWidgets`, `integration_test`
* `flutter build apk`, `.aab`, publication Play Store

**🛠 Application :

* Test complet des fonctionnalités
* Démo de l’app (screen recording)
* Build final (`flutter build apk`)
* Push final sur GitHub

Platform  Firebase App Id
web       1:824495606100:web:83c8d4fed9f33ff8a3a0c1
android   1:824495606100:android:bc677a4546982096a3a0c1
ios       1:824495606100:ios:2ca02cad98bd0f3fa3a0c1
macos     1:824495606100:ios:2ca02cad98bd0f3fa3a0c1
windows   1:824495606100:web:887f9a5fe3dd6718a3a0c1
