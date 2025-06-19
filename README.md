# 📱 Stories +243 – Plateforme mobile culturelle & sociale de Kinshasa 🇨🇩

Titre du projet : Plateforme mobile de publications culturelles, informatives et sociales autour de Kinshasa 
Présentation générale 
Dans le contexte dynamique de la ville de Kinshasa, riche en histoires, actualités urbaines, communautés et contenus créatifs, cette application vise à devenir un carrefour de publications digitales centré sur la vie kinosienne. Elle proposera un système de compte utilisateur, un menu d'accueil personnalisé, des contenus en lecture ou en favoris, une navigation par thématiques et une présentation détaillée des publications.
Objectifs du projet :
•	Objectif général : Créer une plateforme mobile communautaire pour partager et explorer des contenus culturels, sociaux et informatifs propres à Kinshasa.
•	Objectifs spécifiques :
o	Offrir un système complet de gestion de comptes utilisateurs (inscription/connexion)
o	Permettre la publication et la consultation de contenus multimédias
o	Organiser les contenus par thématiques
o	Afficher les publications sous forme d’articles interactifs
o	Ajouter une barre de progression pour les contenus en cours de lecture
o	Intégrer un menu latéral et un menu principal riche en options
o	Permettre les réactions : j'aime, commentaires, favoris, partage
o	Offrir un système de recherche et de navigation personnalisée
o	Intégrer une section profil utilisateur et favoris
Public cible :
•	Habitants de Kinshasa
•	Jeunes adultes, blogueurs, journalistes urbains, passionnés de culture congolaise
•	Utilisateurs de réseaux sociaux et applications communautaires
2. Analyse des besoins
Besoins fonctionnels :
•	Inscription et connexion utilisateur
•	Menu d’accueil personnalisé avec texte de bienvenue
•	Menu latéral (drawer)
•	Icône de notification sur l’app bar
•	Icône de profil sur l’app bar
•	Fil de publications en cours de lecture avec barre de progression
•	Barre thématique défilante pour explorer les catégories
•	Présentation des contenus comme articles avec : texte, image, nom, username, icône paramètre, favoris
•	Affichage détaillé d’un contenu : média, titre, auteur, description, thématique, réactions
•	Réactions disponibles : j'aime, commenter, partager, enregistrer
•	Widget profil utilisateur : photo, publications, abonnements, abonnés
•	Section favoris pour retrouver ses contenus sauvegardés
•	Système de recherche : publications et utilisateurs
•	Page de paramètres : thèmes, compte, notification, aide, politique, à propos, déconnexion
Besoins non fonctionnels :
•	Interface mobile fluide, intuitive et moderne (design Material)
•	Compatibilité Android minimum version 8+
•	Support des connexions lentes (optimisation Firebase)
•	Respect des règles communautaires (pas de contenus haineux, politiques ou médicaux)
3. Fonctionnalités détaillées
Fonctionnalités principales
1. Inscription / Connexion
•	Acteur : Utilisateur
•	Action : S’inscrit ou se connecte via email, numéro ou compte Google
•	Résultat : Création d’un compte ou ouverture de session, accès à l'app
2. Accueil personnalisé
•	Acteur : Utilisateur connecté
•	Action : Arrive sur la page d’accueil après connexion
•	Résultat : Message de bienvenue + fil de publications en cours/à découvrir
3. Menu latéral
•	Acteur : Utilisateur
•	Action : Ouvre le drawer et sélectionne un élément (profil, paramètres…)
•	Résultat : Navigation vers la page choisie
4. Notifications push et internes
•	Acteur : Système / Utilisateur
•	Action : Reçoit une alerte (publication, message, actu…)
•	Résultat : Icône de notification activée + accès au contenu
5. Profil utilisateur
•	Acteur : Utilisateur
•	Action : Consulte un profil (le sien ou celui d’un autre)
•	Résultat : Affiche : photo, bio, publications, abonnés, abonnements
6. Recherche
•	Acteur : Utilisateur
•	Action : Tape un mot-clé ou un pseudo
•	Résultat : Résultats filtrés : publications ou profils correspondants
7. Navigation par thématique
•	Acteur : Utilisateur
•	Action : Clique sur une thématique dans la barre défilante
•	Résultat : Le feed se filtre selon la thématique sélectionnée
8. Affichage des publications
•	Acteur : Utilisateur
•	Action : Parcourt la liste des publications
•	Résultat : Affiche : média, titre, auteur, icônes paramètres + favoris
9. Widget détaillé d’une publication
•	Acteur : Utilisateur
•	Action : Clique sur une publication
•	Résultat : Accès au contenu complet + auteur + réactions
10. Réactions sociales
•	Acteur : Utilisateur
•	Action : Like, commente, partage ou enregistre une publication
•	Résultat : Action enregistrée, compteur mis à jour
11. Paramètres de compte
•	Acteur : Utilisateur
•	Action : Accède aux options de configuration (thème, déconnexion, etc.)
•	Résultat : App personnalisée selon ses préférences
Fonctionnalités secondaires
•	Authentification deux facteurs (version 2)
•	Création de communautés
•	Messagerie privée
•	Suggestions d’amis / auteurs à suivre
4. Technologies
•	Langage : Flutter (Dart)
•	Base de données : Firebase Firestore + Firebase Auth + Firebase Storage
•	Notifications : Firebase Cloud Messaging
•	Contrôle de version : Git / GitHub
5. Contraintes
•	Application uniquement mobile (Android)
•	Connexion Internet requise
•	Interface légère et rapide
•	Respect des CGU stricts
•	Validation manuelle des contenus sensibles

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

** Apprentissage :**

* Firebase Auth (email/password & Google Sign-In)
* Notion de `Future`, `async/await`

** Application :**

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

## 📦 Étape 1 – Initialisation du projet Flutter + Firebase
### 🎓 Objectifs d’apprentissage
Avant de commencer à coder l'application, il est important de :

* 🧠 **Comprendre la structure d’un projet Flutter** : `lib/`, `android/`, `pubspec.yaml`, `main.dart`, etc.
* 🧠 **Maîtriser le cycle de vie d’une application Flutter** : du `main()` jusqu’au rendu des widgets.
* ☁️ **Comprendre ce qu’est Firebase** :
  * Base de données (`Cloud Firestore`)
  * Authentification (`Firebase Auth`)
  * Stockage des médias (`Firebase Storage`)
  * Notifications (`Firebase Messaging`)
---
### 🛠 Mise en œuvre sur le projet `Stories +243`
1. Création du projet Flutter
```bash
flutter create projet_upc1
cd projet_upc1
```
Organisation de la structure Flutter personnalisée

Dans le dossier `lib/`, création des sous-dossiers :

lib/
├── main.dart                    # Entrée de l’application
├── models/                     # Modèles de données (post, user, etc.)
├── views/                      # Interfaces utilisateur
├── services/                   # Auth, Firestore, etc.
├── controllers/                # Gestion d’état
├── widgets/                    # Composants réutilisables
├── config/                     # Thèmes, constantes
└── routes.dart                 # Système de navigation
```
3. Création d’un projet Firebase

    * Se rendre sur [Firebase Console](https://console.firebase.google.com/)
    * Créer un projet nommé `stories-kin` ou similaire
    * Ajouter une application **Android**

        * Nom du package : `com.upc.storieskin` (doit correspondre au `AndroidManifest.xml`)
        * Télécharger et placer le fichier `google-services.json` dans :
          👉 `android/app/google-services.json`

4. **Ajout des dépendances Firebase dans `pubspec.yaml`**

```yaml
dependencies:
  firebase_core: ^2.0.0
  firebase_auth: ^4.0.0
  cloud_firestore: ^4.0.0
  firebase_storage: ^11.0.0
  firebase_messaging: ^14.0.0
  provider: ^6.0.0
  shared_preferences: ^2.0.0
  fluttertoast: ^8.2.0
  google_sign_in: ^6.0.0
```
Configuration du projet Android (`android/app/build.gradle`)
```gradle
apply plugin: 'com.google.gms.google-services'

android {
  // ...
  defaultConfig {
    applicationId "com.upc.storieskin"
    minSdkVersion 21
    // ...
  }
}
```⚠️ Difficultés courantes rencontrées
| Problème                                         | Cause probable                                           | Solution                                                         |
| ------------------------------------------------ | -------------------------------------------------------- | ---------------------------------------------------------------- |
| `google-services.json` non détecté               | Mauvais dossier (doit être dans `android/app/`)          | Vérifie l’arborescence                                           |
| Erreur `Plugin project :firebase_core not found` | Plugin mal installé                                      | Réexécuter `flutter pub get`                                     |
| Crash à l’exécution                              | Incohérence entre `applicationId` et le package Firebase | Aligne le nom dans Firebase et `build.gradle`                    |
| Firebase non initialisé                          | `WidgetsFlutterBinding.ensureInitialized()` manquant     | Ajoute-le dans `main.dart`                                       |
| Erreur `MissingPluginException`                  | Problème de liaison de plugin                            | Fais `flutter clean`, puis `flutter pub get`, puis `flutter run` |