import java.io.File;
import java.util.Scanner;
public class MiniHackathon2
{
  public static void main(String[] args)
  {
    double[] arr = CreateArray.getArray();
    double i = arr.length / 2;
    if (i != (int)arr.length / 2)
      i = arr.length / 2 + 1;
    double median = 0;
    if (arr.length % 2 == 0)
      median = (arr[(int)i] + arr[(int)i + 1]) / 2;
    else
      median = arr[(int)i];
    System.out.println(median);

    // File file = new File("C:\\Users\\Ashley\\Desktop\\APCS\\integers.txt");
    // Scaner sc = new Scanner(file);


    // char[] line = PatternArray.getArray();
    // printArray(line);
  }

  public static void printArray(char[] arr)
  {
    System.out.print("{ ");
    for(int i = 0; i < arr.length; i++)
    {
      if (i != arr.length - 1)
        System.out.print(arr[i] + ", ");
      else
        System.out.print(arr[i]);
    }
    System.out.println(" }");
  }
}
