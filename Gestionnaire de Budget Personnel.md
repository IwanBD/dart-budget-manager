# Guide de Projet: Gestionnaire de Budget Personnel en Dart

## Objectif
Créer une application de gestion de budget en ligne de commande permettant de suivre les revenus et dépenses, d'analyser les habitudes financières et de définir des objectifs budgétaires.

## Compétences Dart à pratiquer
- Variables et types de données
- Structures conditionnelles
- Boucles
- Collections (listes, maps)
- Fonctions
- Manipulation de chaînes de caractères
- Opérations mathématiques
- Gestion des entrées/sorties
- Gestion des dates

## Fonctionnalités à implémenter

### 1. Gestion des transactions
- **Données à stocker pour chaque transaction:**
  - Identifiant unique
  - Date (format YYYY-MM-DD)
  - Type (revenus ou dépenses)
  - Montant
  - Catégorie
  - Description (optionnelle)

- **Structure de données suggérée:**
  - Une liste de maps pour les transactions
  - Chaque transaction représentée comme une map avec les clés correspondant aux champs ci-dessus

### 2. Menu principal interactif
- Inclure les options suivantes:
  1. Ajouter une transaction
  2. Afficher toutes les transactions
  3. Voir le résumé du budget
  4. Filtrer les transactions
  5. Définir un objectif budgétaire
  6. Générer un rapport
  7. Sauvegarder les données
  8. Quitter

### 3. Ajout de transactions
- Indications:
  - Demander à l'utilisateur de préciser s'il s'agit d'un revenu ou d'une dépense
  - Demander le montant (valider qu'il s'agit bien d'un nombre)
  - Demander la catégorie
  - Demander une description (optionnelle)
  - Générer un identifiant unique (utiliser un timestamp)
  - Utiliser la date actuelle par défaut
  - Stocker la transaction dans la liste de transactions

### 4. Affichage des transactions
- Indications:
  - Vérifier si la liste des transactions est vide
  - Afficher un en-tête avec les noms des colonnes
  - Parcourir la liste et afficher chaque transaction sous forme tabulaire
  - Formater les montants avec deux décimales
  - Aligner correctement les colonnes

### 5. Résumé du budget
- Calculs à effectuer:
  - Somme totale des revenus
  - Somme totale des dépenses
  - Solde (revenus - dépenses)
  - Total par catégorie
  
- Affichage suggéré:
  - Présenter les totaux généraux
  - Présenter les totaux par catégorie
  - Comparer les dépenses par catégorie avec les objectifs définis (si existants)
  - Calculer le pourcentage du budget utilisé pour chaque catégorie

### 6. Filtrage des transactions
- Critères de filtrage à implémenter:
  - Par type (revenus ou dépenses)
  - Par catégorie
  - Par date
  - Par plage de montants
  
- Indications:
  - Créer un sous-menu pour sélectionner le type de filtre
  - Pour chaque type de filtre, demander les critères spécifiques
  - Appliquer les filtres sur la liste de transactions
  - Afficher les résultats filtrés au même format que l'affichage complet

### 7. Définition d'objectifs budgétaires
- Données à stocker pour les objectifs:
  - Catégorie
  - Montant limite
  
- Structure de données suggérée:
  - Une map avec les catégories comme clés et les montants limites comme valeurs
  
- Indications:
  - Afficher les catégories existantes pour aider l'utilisateur
  - Demander la catégorie pour l'objectif
  - Demander le montant limite
  - Stocker ou mettre à jour l'objectif dans la map d'objectifs

### 8. Génération de rapports
- Types de rapports à proposer:
  - Quotidien
  - Hebdomadaire
  - Mensuel
  
- Indications:
  - Créer un sous-menu pour sélectionner le type de rapport
  - Calculer les dates de début et de fin selon le type de rapport
  - Filtrer les transactions qui tombent dans cette période
  - Calculer les totaux pour la période
  - Afficher un résumé détaillé
  - Inclure la répartition par catégorie

### 9. Sauvegarde et chargement des données
- Données à sauvegarder:
  - Liste des transactions
  - Map des objectifs budgétaires
  
- Format suggéré:
  - Convertir les structures de données en JSON
  - Sauvegarder dans un fichier nommé "budget_data.json"
  
- Indications:
  - Utiliser la bibliothèque `dart:convert` pour la conversion en JSON
  - Utiliser la bibliothèque `dart:io` pour la lecture/écriture de fichiers
  - Gérer les exceptions potentielles

## Données de test

### Catégories suggérées
- Revenus: Salaire, Freelance, Cadeaux, Investissements, Autres revenus
- Dépenses: Alimentation, Logement, Transport, Loisirs, Santé, Éducation, Vêtements, Technologie, Factures, Autres dépenses

### Transactions de test
1. Date: 2023-01-01, Type: Revenu, Montant: 2500.00, Catégorie: Salaire, Description: "Salaire mensuel"
2. Date: 2023-01-03, Type: Dépense, Montant: 650.00, Catégorie: Logement, Description: "Loyer"
3. Date: 2023-01-05, Type: Dépense, Montant: 120.50, Catégorie: Alimentation, Description: "Courses"
4. Date: 2023-01-08, Type: Dépense, Montant: 45.75, Catégorie: Transport, Description: "Essence"
5. Date: 2023-01-10, Type: Dépense, Montant: 89.99, Catégorie: Loisirs, Description: "Restaurant"
6. Date: 2023-01-15, Type: Revenu, Montant: 200.00, Catégorie: Freelance, Description: "Projet de design"
7. Date: 2023-01-18, Type: Dépense, Montant: 35.00, Catégorie: Santé, Description: "Médicaments"
8. Date: 2023-01-20, Type: Dépense, Montant: 129.99, Catégorie: Technologie, Description: "Abonnement annuel"
9. Date: 2023-01-25, Type: Dépense, Montant: 75.50, Catégorie: Vêtements, Description: "Vêtements d'hiver"
10. Date: 2023-01-28, Type: Dépense, Montant: 110.00, Catégorie: Factures, Description: "Électricité"

### Objectifs budgétaires de test
1. Catégorie: Alimentation, Limite: 300.00
2. Catégorie: Logement, Limite: 700.00
3. Catégorie: Transport, Limite: 150.00
4. Catégorie: Loisirs, Limite: 200.00
5. Catégorie: Santé, Limite: 100.00

## Suggestions d'amélioration pour aller plus loin

1. **Visualisation avancée**
   - Créer des graphiques ASCII simples pour représenter les dépenses par catégorie
   - Générer des histogrammes montrant l'évolution des dépenses sur plusieurs périodes

2. **Système de rappels**
   - Implémenter des alertes lorsqu'un objectif budgétaire est proche d'être dépassé
   - Calculer les jours restants avant la fin du mois et le budget restant

3. **Prévisions budgétaires**
   - Analyser les tendances des dépenses passées
   - Suggérer des prévisions pour le mois suivant

4. **Exportation de données**
   - Ajouter la possibilité d'exporter les rapports au format CSV
   - Générer un rapport de synthèse au format texte

5. **Gestion multi-comptes**
   - Permettre de suivre plusieurs comptes bancaires ou portefeuilles
   - Implémenter des transferts entre comptes

## Conseils pratiques

1. Commencez par créer la structure du menu principal et validez que la navigation fonctionne.
2. Implémentez ensuite les fonctionnalités de base une par une (ajout, affichage).
3. Ajoutez progressivement les fonctionnalités plus complexes.
4. Testez régulièrement chaque fonctionnalité avec des données variées.
5. Pensez à la validation des entrées utilisateur pour éviter les erreurs.
6. Utilisez des fonctions auxiliaires pour éviter la duplication de code.
7. N'oubliez pas de gérer les cas où les listes sont vides.
