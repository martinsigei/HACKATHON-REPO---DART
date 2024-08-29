bool isPalindrome(String input) {
  // Remove spaces, punctuation, and convert to lowercase
  String processedInput = input
      .replaceAll(RegExp(r'[^A-Za-z0-9]'), '') // Remove non-alphanumeric characters
      .toLowerCase(); // Convert to lowercase

 
  String reversedInput = processedInput.split('').reversed.join('');

  
  return processedInput == reversedInput;
}

void main() {
  // Test cases with strings
  print(isPalindrome("Madam, in Eden, I'm Adam")); 
  print(isPalindrome("This is not a palindrome")); 
  print(isPalindrome("Hello, World!")); 

  // Test cases with numeric strings
  print(isPalindrome("12321")); 
  print(isPalindrome("12345")); 
}
