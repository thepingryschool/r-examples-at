public class MiniHackathon2018
{
  public static void main(String[] args)
  {
    // double[] populate = PopulateArray.getArray();
    // double sum = 0;
    // int i = 0;
    // int previous = 0;
    // while (i < populate.length)
    // {
    //   sum += populate[i];
    //   if (i == 0)
    //     i++;
    //   else;
    //     i += i;
    //   previous += previous;
    // }
    // double mean = sum / populate.length;
    // System.out.println(sum);

    int sum = 0;
    for (int i = 1; i <= 300; i++)
    {
      if (i % 2 == 0)
        sum += i;
      else
        sum += (i * -1);
    }
    for (int i = 301; i <= 600; i++)
    {
      int digits = sumDigits(i);
      if ((digits - 1) % 3 == 0)
        sum += (i * -1);
      else
        sum += i;
    }
    for (int i = 601; i <= 900; i++)
    {
      int digits = sumDigits(i);
      if ((digits - 2) % 5 == 0)
        sum += (i * -1);
      else
        sum += i;
    }
    for (int i = 901; i <= 1000; i++)
    {
      int j = 0;
      
    }
  }

  public static int sumDigits(int num)
  {
    num = num * -1;
    int sum = 0;
    while (num > 0)
    {
      sum += num % 10;
      num /= 10;
    }
  }

}
