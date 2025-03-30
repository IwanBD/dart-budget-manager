import 'dart:io';

void main(){

  while (true) {
      printMenu();
      int choice = stdin.readByteSync();
      switch(choice){
        // ignore: constant_pattern_never_matches_value_type
        case 1:
          print("=>Ajouter une transaction");
          break;
        case 2:
          print("=>Afficher les transactions");
          break;
        case 3:
          print("=>Voir le résumé du budget");
          break;
        case 4:
          print("4. Définir un objectif budgétaire");
          break;
        case 5:
          print("5. Sauvegarder les données");
          break;
        case 6:
          print("6. Charger les données");
          break;
        case 7:
          print("7. Quitter");
          exit(0);
        default:
          print("Option invalide, veuillez réessayer.");
      }
  }  

}


void printMenu(){
  print("\n--- Gestionnaire de Budget ---");
  print("1. Ajouter une transaction");
  print("2. Afficher les transactions");
  print("3. Voir le résumé du budget");
  print("4. Définir un objectif budgétaire");
  print("5. Sauvegarder les données");
  print("6. Charger les données");
  print("7. Quitter");
  stdout.write("Votre choix: ");
}