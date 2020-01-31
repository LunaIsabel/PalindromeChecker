public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
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
public boolean palindrome(String word)
{
  //your code here

  String arr = word;
  arr = noSpace(arr);
  arr = noCaps(arr);
  if(reverse(arr).equals(arr)){
    return true;
  }else{
    return false;
  }

}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for(int i = str.length() - 1; i >= 0; i --){
      sNew += str.substring(i, i + 1);
    }
    return sNew;
}

public String noCaps(String str){
  return str.toLowerCase();
}

public String noSpace(String str){
  String bob = "";
  for(int i = 0; i < str.length(); i ++){
    if(str.substring(i, i + 1).equals(" ") != true && isLetter(str.substring(i, i + 1))){
      bob += str.substring(i, i + 1);
    }
  }
  return bob;
}

public boolean isLetter(String str)
{
  return Character.isLetter(str.charAt(0));
}
