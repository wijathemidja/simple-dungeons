import 'dart:math';
import 'classes.dart';
import 'dart:io';
import 'rules.dart' as rule;
// Roll
// The function takes in a max possible value (unlike the built in function in dart:math (I did this for simplicity).
// So for a roll between 1 and 20 roll(20) is used and for a roll between 1 and 100 roll(100) is used.
int roll(int maxposvalue){
  return(Random().nextInt(maxposvalue)+1);
}
//Reroll Extended
// The function takes one max possible value and feeds it in to two seperate roll functions. It then asks the user if they want to reroll, and they can decline, or they can enter 1 to do (in essence) the autoreroll function, but with extra text to explain.
// Because it takes an option and input it has an else catch-all statement and while loop.
int exReroll(int maxposvalue){
  int roll1 = roll(maxposvalue);
  int roll2 = roll(maxposvalue);
  int chosenRoll = roll1;
  while(true){
    print("Your roll was $roll1. Would you like to reroll?\n[0] No \n[1] Yes");
    String? chosenOption = stdin.readLineSync();
    if (chosenOption == "0"){
      chosenRoll=roll1;
      clearScreen();
      break;
    } else if (chosenOption == "1"){
      if (roll1 >= roll2){
        chosenRoll = roll1;
      } else if (roll2 >= roll1){
        chosenRoll = roll2;
      }
      print("Your reroll was $roll2. The value used will be $chosenRoll");
      sleep(Duration(milliseconds: rule.rules["Delay Before Clear"]));
      clearScreen();
      break;
    } else {
      print("You didn't enter a value that was 0 or 1. Please try again");
    }
  }
  return(chosenRoll);
}
//Auto Reroll
//Auto reroll rolls two values and then finds the highest and returns that value, v simple.
int autoReroll(int maxposvalue){
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
int reroll(maxposvalue){
  if (rule.rules["Rerolls"] == "Extended"){
    return(exReroll(maxposvalue));
  } else if (rule.rules["Rerolls"] == "Automatic"){
    return(autoReroll(maxposvalue));
  } else if (rule.rules["Rerolls"] == "Disabled"){
    return(roll(maxposvalue));
  } else {
    return(exReroll(maxposvalue));
  }
}
//Welcome
//The starting text but this can be called whenever, this is useful because if the user goes back to the 'home screen' (this text) they can see the options.
welcome(){

  Function runfunction;
  while(true){
    print("Welcome to Simple Dungeons.\n[0] Setup \n[1] Character Creator \n[2] Exit");
    rule.lastScreen = "welcome";
    String? welcomeChosenChoice = stdin.readLineSync();
    if (welcomeChosenChoice=="0"){
      runfunction = setup();
      break;
    } else if (welcomeChosenChoice == "1"){
      runfunction = createCharacter();
      break;
    } else if (welcomeChosenChoice == "2"){
      runfunction = exitapp();
      break;
    } else {
      print("You didn't enter a valid input. Please try again.");
    }
  }
  clearScreen();
  runfunction;
}
//Create Character
//Create Character is called whenever it is selected from the welcome menu. It does what is says ig
createCharacter(){
  String? ccchoice;
  Function? runfunction;
  while(true){
    print("What would you like your species to be?");
    print("[0] Dwarf \n[1] Elf \n[2] Halfling \n[3] Human \n[4] Back");
    ccchoice = stdin.readLineSync();
    if (ccchoice == "0"){
      runfunction = dwarfCreation();
      break;
    } else if (ccchoice == "1"){
      runfunction = elfCreation();
      break;
    } else if (ccchoice == "2"){
      runfunction = halflingCreation();
      break;
    } else if (ccchoice == "3"){
      runfunction = humanCreation();
    } else if (ccchoice == "4"){
      runfunction = backScreen();
      break;
    } else {
      print("You didn't enter a valid input. Please try again.");
    }
  }
  clearScreen();
  runfunction;


}
//Setup
//Sets up simple dungeon rules. Not required but useful.
setup(){
  print("These are the current rules.");
  String rerollRule = rule.rules["Rerolls"];
  print("Rerolls are set to $rerollRule. If you would like to see information on this see the wiki.");
  print("[0] Set Rerolls to Extended \n[1] Set Rerolls to Automatic \n[2] Keep current rule \n[3] Back");
  String? rrchosenOption = stdin.readLineSync();
  if (rrchosenOption == "0"){
    rule.rules["Rerolls"] = "Extended";
  } else if (rrchosenOption == "1"){
    rule.rules["Rerolls"] = "Automatic";
  } else if (rrchosenOption == "3"){
    backScreen();
  }
  int clearDelay = rule.rules["Delay Before Clear"];
  print("When using extended rerolls, the delay before clear is set to $clearDelay milliseconds.");
  print("[0] Set delay to custom amount \n[1] Keep current rule \n[2] Back");
  String? cdchosenOption = stdin.readLineSync();
  if (cdchosenOption == "0"){
    print("What do you want the delay to be (in milliseconds)? \nIf you want it to be 0 enter 0.");
    String? cdcustomstr = stdin.readLineSync();
    String cdcustomr = "$cdcustomstr";
    int cdcustom = int.parse(cdcustomr);
    rule.rules["Delay Before Clear"] = cdcustom;
  } else if (cdchosenOption == "2"){
    backScreen();
  } else {
    print("Kept delay at $clearDelay milliseconds");
  }
  //NEXT RULE HERE PLACEHOLDER
  //Exit
  clearScreen();
  backScreen();
}

//Back Screen
//Looks at last screen and runs function corresponding to it.
backScreen(){
  rule.screens[rule.lastScreen];
}

//Exit App
exitapp(){
  exit(0);
}

// CHARACTER CREATION SPECIES SPECIFIC

dwarfCreation(){
  print("Now you're going to roll your basic stats and HP for your hero.\n");
  print("Your strength is 40 + a 1d10 roll");
  int str = 40+reroll(10);
  print("Your strength is $str");
  clearScreen();
  print("Your constitution is 30 + a 1d10 roll");
  int con = 30+reroll(10);
  print("Your constitution is $con");
  clearScreen();
  print("Your dexterity is 25 + a 1d10 roll");
  int dex = 25+reroll(10);
  print("Your dexterity is $dex");
  clearScreen();
  print("Your wisdom is 25 + a 1d10 roll");
  int wis = 25+reroll(10);
  print("Your wisdom is $wis");
  clearScreen();
  print("Your resolve is 30 + a 1d10 roll");
  int res = 30+reroll(10);
  print("Your resolve is $res");
  clearScreen();
  print("Your HP is 8 + a 1d6 roll");
  int hp = 8+reroll(6);
  print("Your HP is $hp");
}

elfCreation(){
  print("Now you're going to roll your basic stats and HP for your hero.\n");
  print("Your strength is 25 + a 1d10 roll");
  int str = 25+reroll(10);
  print("Your strength is $str");
  clearScreen();
  print("Your constitution is 20 + a 1d10 roll");
  int con = 20+reroll(10);
  print("Your constitution is $con");
  clearScreen();
  print("Your dexterity is 40 + a 1d10 roll");
  int dex = 40+reroll(10);
  print("Your dexterity is $dex");
  clearScreen();
  print("Your wisdom is 35 + a 1d10 roll");
  int wis = 35+reroll(10);
  print("Your wisdom is $wis");
  clearScreen();
  print("Your resolve is 30 + a 1d10 roll");
  int res = 30+reroll(10);
  print("Your resolve is $res");
  clearScreen();
  print("Your HP is 6 + a 1d6 roll");
  int hp = 6+reroll(6);
  print("Your HP is $hp");
}

halflingCreation(){
  print("Now you're going to roll your basic stats and HP for your hero.\n");
  print("Your strength is 20 + a 1d10 roll");
  int str = 20+reroll(10);
  print("Your strength is $str");
  clearScreen();
  print("Your constitution is 20 + a 1d10 roll");
  int con = 20+reroll(10);
  print("Your constitution is $con");
  clearScreen();
  print("Your dexterity is 40 + a 1d10 roll");
  int dex = 40+reroll(10);
  print("Your dexterity is $dex");
  clearScreen();
  print("Your wisdom is 30 + a 1d10 roll");
  int wis = 30+reroll(10);
  print("Your wisdom is $wis");
  clearScreen();
  print("Your resolve is 40 + a 1d10 roll");
  int res = 40+reroll(10);
  print("Your resolve is $res");
  clearScreen();
  print("Your HP is 5 + a 1d6 roll");
  int hp = 5+reroll(6);
  print("Your HP is $hp");
}

humanCreation(){
  print("Now you're going to roll your basic stats and HP for your hero.\n");
  print("Your strength is 30 + a 1d10 roll");
  int str = 30+reroll(10);
  print("Your strength is $str");
  clearScreen();
  print("Your constitution is 30 + a 1d10 roll");
  int con = 30+reroll(10);
  print("Your constitution is $con");
  clearScreen();
  print("Your dexterity is 30 + a 1d10 roll");
  int dex = 30+reroll(10);
  print("Your dexterity is $dex");
  clearScreen();
  print("Your wisdom is 30 + a 1d10 roll");
  int wis = 30+reroll(10);
  print("Your wisdom is $wis");
  clearScreen();
  print("Your resolve is 30 + a 1d10 roll");
  int res = 30+reroll(10);
  print("Your resolve is $res");
  clearScreen();
  print("Your HP is 6 + a 1d6 roll");
  int hp = 7+reroll(6);
  print("Your HP is $hp");
}

clearScreen(){
  print(Process.runSync("clear", [], runInShell: true).stdout);
}
