int score(String word) {
  final Map<String, int> letterValues = {
    'A': 1, 'E': 1, 'I': 1, 'O': 1, 'U': 1, 'L': 1, 'N': 1, 'R': 1, 'S': 1, 'T': 1,
    'D': 2, 'G': 2,
    'B': 3, 'C': 3, 'M': 3, 'P': 3,
    'F': 4, 'H': 4, 'V': 4, 'W': 4, 'Y': 4,
    'K': 5,
    'J': 8, 'X': 8,
    'Q': 10, 'Z': 10
  };

  // Calculate the total score by summing up the values of the letters in the word.
  int totalScore = word.toUpperCase().split('').fold(0, (total, letter) => total + (letterValues[letter] ?? 0));

  // Print the word and its score.
  print('The Scrabble score for the word "$word" is $totalScore.');

  // Return the total score.
  return totalScore;
}

void main() {
  // Example usage
  score('Poppe,');  
  score('hello');    
  score('abcdefghijklmnopqrstuvwxyz');     
}
