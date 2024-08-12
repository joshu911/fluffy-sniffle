
class EggCounter {
  int count(int number) {
    int count = 0;
    while (number > 0) {
      if ((number & 1) == 1) {
        count++;
      }
      number >>= 1;
    }
    return count;
  }
}
void main() {
  EggCounter eggCounter = EggCounter();
  
  
  int result = eggCounter.count(70);
  print('Number of 1s in binary representation : $result');
}