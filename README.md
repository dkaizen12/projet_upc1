# projet_upc1
projet academique 2024-2025

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

Debut du projet 

Sur Github, je t'inscris la commande flutter create projet_upc1
que je vais commit et publier en public sur github grâce à 
Github desktop et ouvrir sur visual studio code 

je vais ajouter à la structure native les fichiers suivants pour mon application, 
En voici une illustractions complète 
stories_kin/
├── lib/
│   ├── main.dart                    # Point d'entrée de l'application
│
│   ├── model_data/                      # Modèles de données simples
│   │   ├── user.dart
│   │   └── post.dart
│
│   ├── services/                    # Services basiques
│   │   └── serv_connect.dart        # Authentification Firebase
│
│   ├── vu_ui/                       # Interfaces utilisateur
│   │   ├── vu_login.dart         # Écran de connexion
│   │   ├── vu_home.dart          # Accueil avec liste de posts
│   │   └── vu_post.dart          # Détail d’une publication
│
│   ├── widgets_communs/                     # Widgets réutilisables
│   │   └── post_card.dart          # Carte de post simple
│
│   └── routes.dart                 # Navigation entre vues
│
├── pubspec.yaml                    # Dépendances & assets
└── README.md                       # Description du projet

Qui pourra ou non être modifié dans la suite du projet 
elle pourra ou non ressembler à celle ci :

stories_kin/
├── android/
├── ios/
├── lib/
│
│── main.dart                          # Point d'entrée de l'application
│── app_config.dart                    # Configuration globale de l'app
│
├── config/                            # Configuration (thèmes, constantes)
│   ├── app_theme.dart                 # Thème clair et sombre
│   ├── app_colors.dart                # Couleurs de référence
│   ├── app_text_styles.dart           # Styles de texte
│   └── app_constants.dart             # Constantes générales
│
├── core/                              # Utilitaires globaux et widgets communs
│   ├── widgets/
│   │   ├── custom_appbar.dart         # Barre d’app personnalisée
│   │   ├── article_card.dart          # Carte pour afficher une publication
│   │   └── drawer_menu.dart           # Menu latéral
│   ├── helpers/
│   │   └── format_utils.dart          # Formatage de texte, date, etc.
│   └── services/
│       ├── auth_service.dart          # Connexion Firebase Auth
│       ├── user_service.dart          # Gestion utilisateurs
│       ├── post_service.dart          # Gestion publications
│       └── firestore_service.dart     # Accès Firestore
│
├── models/                            # Modèles de données (Data Models)
│   ├── utilisateur_model.dart
│   ├── publication_model.dart
│   ├── thematique_model.dart
│   ├── commentaire_model.dart
│   └--─ notification_model.dart
│
├── views/                             # Interfaces utilisateur (UI)
│   ├── authentication/
│   │   ├── login_view.dart
│   │   ├── register_view.dart
│   │   └── splash_screen.dart
│
│   ├── accueil/
│   │   └── accueil_view.dart          # Page d’accueil personnalisée
│
│   ├── publications/
│   │   ├── liste_publications.dart    # Fil d’articles
│   │   └── detail_publication.dart    # Affichage complet d’un article
│
│   ├── utilisateurs/
│   │   ├── profil_utilisateur.dart
│   │   └── modifier_profil.dart
│
│   ├── favoris/
│   │   └── favoris_view.dart
│
│   ├── recherche/
│   │   └── recherche_view.dart
│
│   ├── notifications/
│   │   └── notifications_view.dart
│
│   └── parametres/
│       └── parametres_view.dart       # Page des paramètres utilisateurs
│
├── controllers/                       # Logique de gestion de chaque vue
│   ├── auth_controller.dart
│   ├── publication_controller.dart
│   ├── utilisateur_controller.dart
│   └── recherche_controller.dart
│
├── routes/
│   └── app_routes.dart                # Toutes les routes de navigation
│
├── firebase_options.dart              # Options Firebase auto-générées
├── pubspec.yaml
└── README.md