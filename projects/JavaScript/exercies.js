const isPalindrome = (str) => {
  str = str.replace("/s/g", "");
  const lowered = str.toLowerCase();
  const splitted = lowered.split("");
  const reversed = splitted.reverse();
  const joined = reversed.join("");
  console.log(lowered);
  return lowered == joined;
};
const a = isPalindrome("Do geese see God");
if (a) {
  console.log("Is a palindrome.");
} else {
  console.log("Not a palindrome.");
}
