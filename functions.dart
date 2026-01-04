import 'dart:math';
// Roll
// The function takes in a max possible value (unlike the built in function in dart:math (I did this for simplicity).
// So for a roll between 1 and 20 roll(20) is used and for a roll between 1 and 100 roll(100) is used.
roll(int maxposvalue){
  return(Random().nextInt(maxposvalue)+1);
}