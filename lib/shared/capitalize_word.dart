String capitalizeFirstLetter(String word) {
  if (word.isEmpty) {return word;}

  return word[0].toUpperCase() + word.substring(1).toLowerCase();
}


List<String> capitalizeFirstLetterInList(List<String> words) {
  return words.map((word) {
    if (word.isEmpty) {
      return word;
    } else {
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }
  }).toList();
}
