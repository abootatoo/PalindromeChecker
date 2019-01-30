public void setup()
{
  String lines[] = loadStrings("palindr void setup()omes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word) {
    String newWord = new String(noSpaceCapitalsPunctuation(word));
    String rNewWord = new String(reverse(newWord));
    if(rNewWord.equals(newWord))
    {
        return true;
    }
    return false;
}
public String reverse(String str) {
    String sNew = new String();
    for(int i = str.length(); i > 0; i--)
    {
        sNew = sNew + str.substring(i - 1, i);
    }
    return sNew;
}
public String noSpaceCapitalsPunctuation(String str) {
    String ls = new String(str.toLowerCase());
    String answer = new String("");
    for(int i = 0; i < ls.length(); i++) 
    {
        char c = ls.charAt(i);
        String s = ls.substring(i, i+1);
        if(Character.isLetter(c) == true)
        {
            answer = answer + s;
        }
    }
    return answer;
}
