import 'dart:math';
import 'classes.dart';
import 'dart:io';
import 'rules.dart' as rule;
// Roll
// The function takes in a max possible value (unlike the built in function in dart:math (I did this for simplicity).
// So for a roll between 1 and 20 roll(20) is used and for a roll between 1 and 100 roll(100) is used.
roll(int maxposvalue){
  return(Random().nextInt(maxposvalue)+1);
}
//Reroll Extended
// The function takes one max possible value and feeds it in to two seperate roll functions. It then asks the user if they want to reroll, and they can decline, or they can enter 1 to do (in essence) the autoreroll function, but with extra text to explain.
// Because it takes an option and input it has an else catch-all statement and while loop.
exReroll(int maxposvalue){
  int roll1 = roll(maxposvalue);
  int roll2 = roll(maxposvalue);
  int chosenRoll = roll1;
  while(true){
    print("Your roll was $roll1. Would you like to reroll?\n[0] No \n[1] Yes");
    String? chosenOption = stdin.readLineSync();
    if (chosenOption == "0"){
      chosenRoll=roll1;
      break;
    } else if (chosenOption == "1"){
      if (roll1 >= roll2){
        chosenRoll = roll1;
      } else if (roll2 >= roll1){
        chosenRoll= roll2;
      }
      print("Your reroll was $roll2. The value used will be $chosenRoll");
      break;
    } else {
      print("You didn't enter a value that was 0 or 1. Please try again");
    }
  }
  return(chosenRoll);
}
//Auto Reroll
//Auto reroll rolls two values and then finds the highest and returns that value, v simple.
autoReroll(int maxposvalue){
  int roll1 = roll(maxposvalue);
  int roll2 = roll(maxposvalue);
  late int chosenRoll;
  if (roll1 >= roll2){
    chosenRoll = roll1;
  } else if (roll2 >= roll1){
    chosenRoll= roll2;
  }
  return(chosenRoll);
}
// Reroll
// Looks at rules file and then decides whether to use autoreroll() or rerollex() when it is called.
reroll(maxposvalue){
  if (rule.rerollType == "extendedReroll"){
    return(exReroll(maxposvalue));
  } else if (rule.rerollType == "autoReroll"){
    return(autoReroll(maxposvalue));
  }
}
//Welcome
//The starting text but this can be called whenever, this is useful because if the user goes back to the 'home screen' (this text) they can see the options.
welcome(){
  print("Welcome to Simple Dungeons.\n[0] Setup \n[1] Character Creator 2 \n[2] Exit");

}
//Create Character is called whenever it is selected from the welcome menu. It does what is says ig
createCharacter(){
  print("What would you like your species to be?");
  print("[0] Dwarf \n[1] Elf \n[2] Halfling \n[3] Human \n[4] Back");

}