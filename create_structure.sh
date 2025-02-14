#!/usr/bin/env bash

# Création des dossiers
mkdir -p config \
         public/css \
         public/js \
         public/uploads/pdf \
         src/controllers \
         src/models \
         src/views/templates \
         src/services

# Fichier de configuration
cat << 'EOF' > config/config.php
<?php
// Ce fichier contient la configuration globale (base de données, constantes, etc.)
EOF

# Point d’entrée "public"
cat << 'EOF' > public/index.php
<?php
// Point d'entrée du site (front controller) pour rediriger les requêtes vers les contrôleurs
EOF

# Feuille de style principale
cat << 'EOF' > public/css/style.css
/* Feuille de style principale pour l'apparence du site */
EOF

# Script JavaScript principal
cat << 'EOF' > public/js/main.js
// Script principal gérant l'interaction côté client (agenda, DOM, etc.)
EOF

# Dossier de PDF (pas besoin de créer un fichier, le dossier suffit)

# Contrôleur d'authentification
cat << 'EOF' > src/controllers/AuthController.php
<?php
// Gère la connexion et la déconnexion des utilisateurs (professeurs et élèves)
EOF

# Contrôleur d'administration
cat << 'EOF' > src/controllers/AdminController.php
<?php
// Gère la partie administrateur (upload de PDF, vérification des droits, etc.)
EOF

# Contrôleur Agenda
cat << 'EOF' > src/controllers/AgendaController.php
<?php
// Gère l'affichage de l'agenda (récupération des données, envoi à la vue)
EOF

# Modèle User
cat << 'EOF' > src/models/User.php
<?php
// Représente un utilisateur (prof ou élève), gère l'accès à la base de données
EOF

# Modèle Agenda
cat << 'EOF' > src/models/Agenda.php
<?php
// Représente une entrée d'agenda (matière, horaires, etc.), gère l'accès à la base de données
EOF

# Service de parsing PDF
cat << 'EOF' > src/services/PdfParser.php
<?php
// Contient la logique d'extraction de texte depuis un PDF, utilisant les regex pour extraire les horaires
EOF

# Vues (templates réutilisables)
cat << 'EOF' > src/views/templates/header.php
<?php
// Header HTML (balises <head>, début de <body>, menu éventuel, etc.)
EOF

cat << 'EOF' > src/views/templates/footer.php
<?php
// Footer HTML (fin du <body>, scripts JS supplémentaires, etc.)
EOF

# Vue de login
cat << 'EOF' > src/views/login.php
<?php
// Formulaire de connexion (identifiant, mot de passe)
EOF

# Vue Dashboard admin
cat << 'EOF' > src/views/admin_dashboard.php
<?php
// Interface d'administration (upload PDF, aperçu des horaires, etc.)
EOF

# Vue Agenda
cat << 'EOF' > src/views/agenda.php
<?php
// Affichage de l'agenda (liste des cours, horaires, etc.)
EOF

# Fichier .htaccess (optionnel, selon le besoin)
cat << 'EOF' > .htaccess
# Fichier de configuration Apache (URL rewriting, redirection, etc.)
EOF

# Fichier README
cat << 'EOF' > README.md
# Mon projet PHP sans framework

Ce projet vise à :

- Gérer la connexion (prof/élèves).
- Uploader un PDF contenant les horaires.
- Parser ce PDF avec des regex pour récupérer les infos.
- Stocker et afficher le tout dans un agenda dynamique.

## Structure de fichiers

Se référer à l'arborescence créée par le script.
EOF

echo "Arborescence et fichiers créés avec succès !"
