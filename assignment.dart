//QUESTION 1

void printElementsLessThan5(List<int> list_a) {
  for (int y in list_a) {
    if (y < 5) {
      print(y);
    }
  }
}

void main() {
  
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  // Calling the function with the sample list
  printElementsLessThan5(a);
}


//QUESTION 2

void main() {
  // Sample lists
  List <int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List <int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  // Find common elements
  List<int> commonElements = findCommonElements(a, b);

  // Print the result
  print(commonElements);
}

List<int> findCommonElements(List <int> list1, List<int> list2) {
  Set <int> set1 = list1.toSet();
  Set <int> set2 = list2.toSet();

  Set<int> commonElements = set1.intersection(set2);

  return commonElements.toList();
}

//QUESTION 3

bool isPalindrome(String inputString) {
  String cleanedString = inputString.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  return cleanedString == cleanedString.split('').reversed.join('');
}

void main() {
  // Sample strings
  String string1 = "mum";
  String string2 = "hello";

  // Check if the strings are palindromes
  print("$string1 is a palindrome: ${isPalindrome(string1)}");
  print("$string2 is a palindrome: ${isPalindrome(string2)}");
}

//QUESTION 4

List<int> getFirstAndLastElements(List<int> inputList)
{
  return [inputList.first, inputList.last];
}

void main() {
  
  List<int> a = [5, 10, 15, 20, 25];
  
  List<int> firstAndLastElements = getFirstAndLastElements(a);
    
    print("First and Last Elements: $firstAndLastElements");
  
  }

//QUESTION 5

import 'dart:io';

void printBackwards(String inputString) {
  List<String> words = inputString.split(' ');
  List<String> reversedWords = words.reversed.toList();
  String reversedString = reversedWords.join(' ');

  print(reversedString);
}

void main() {
  // Ask the user for input
  print("Enter a long string containing multiple words:");
  String inputString =  stdin.readLineSync() ?? '';

  // Call the function to print the string in reverse order
  printBackwards(inputString);
}

//QUESTION 6

List<T> removeDuplicates<T>(List<T> inputList) {
  List<T> uniqueList = [];

  for (T element in inputList) {
    if (!uniqueList.contains(element)) {
      uniqueList.add(element);
    }
  }

  return uniqueList;
}

void main() {
  // Sample list with duplicates
  List<int> a = [1, 2, 2, 3, 4, 4, 5, 5, 6];

  // Call the function to remove duplicates
  List<int> newList = removeDuplicates(a);

  // Print the result
  print("Original list: $a");
  print("List with duplicates removed: $newList");
}


