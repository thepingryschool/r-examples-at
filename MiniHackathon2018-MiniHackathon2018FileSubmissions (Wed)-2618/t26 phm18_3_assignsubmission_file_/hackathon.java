public class hackathon{
  //#6
  public static void main(String[] args){
    int ans =0, temp = 1, currGap = 2;
    for(int i = 1; i <= 1000; i++){
      if(i <= 300){
        if(i % 2 == 0)
          ans += i;
        else
          ans -= i;
      }
      else if(i <= 600){
        if(i % 3 == 1)
          ans -= i;
        else
          ans += i;
      }
      else if(i <= 900){
        if(i % 5 == 1)
          ans -= i;
        else
          ans += i;
      }
      else if(i == 901)
        ans -= i;
      else{
        if(temp-- == 0){
          temp = (int) currGap;
          currGap *= 2;
          ans -= i;
        }
        else
          ans += i;
      }
    }
    System.out.println(ans);
  }
}


//#3
public class hackathon{
  public static void main(String[] args){
    // access the array using the get() static method from PopulateArray class
    double[] arr = PopulateArray.getArray();
    double ans = 0;
    for(int i = 0; i < arr.length; i++){
      ans += arr[i];// - (int) arr[i];
    }
    System.out.println(ans);
    ans/=arr.length;
    System.out.println(ans);
  }
}


/*//#4
public class hackathon{
  public static void main(String[] args){
    // access the array using the get() static method from PopulateArray class
    double[] arr = PopulateArray.getArray();
    double ans = 0, a = 0, b = 1, temp = 0;
    ans += arr[0];//get first num
    ans -= arr[1];//stop double counting
    for(; b < arr.length;){
      ans += arr[(int)b];
      System.out.println(b);
      temp = a;
      a = b;
      b = a + temp;
    }
    System.out.println(ans);
  }
}*/


/*//#3
public class hackathon{
  public static void main(String[] args){
    // access the array using the get() static method from PopulateArray class
    double[] arr = PopulateArray.getArray();
    double ans = 0;
    for(int i = 0; i < arr.length; i++){
      ans += arr[i];// - (int) arr[i];
    }
    System.out.println(ans);
    ans/=arr.length;
    System.out.println(ans);
  }
}*/
