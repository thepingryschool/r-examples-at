public class Hack{
	public static double[] f=PopulateArray.getArray();
	public static void main(String[] args){
		arraySum()
		sumofFib();
		//Problem8();
	}
	public static void arraySum(){
		int sum=0;
		for (int i=0; i<f.length; i++){
			sum+=f[i];
		}
		System.out.println(sum/f.length);
	}
	public static void sumofFib(){

		double sum=0;
		int[] arr=new int[f.length];
		//System.out.println(f.length);
		for (int i=0; i<f.length; i++){
			arr[i]=fib(i);

		}
		for (int i=0; i<f.length; i++){
			if (isIn(i,arr)){
				sum+=f[i];
			}
		}

		System.out.println(sum);
	}
		//BlackJack.printArrayDouble(f);
		public static int Problem8(){ //did not have time to finish
			int s=0;
			for (int i=1; i<=1000; i++){
				if (i<=300){
					if (i%2==1){
						i=-i;
					}
				}
				else if (i<=600){
					if ((i-301)%3==0){
						i=-i;
					}
				}
				else if (i<=900){
					if ((i-601)%5==0){
						i=-i;
					}

				}
				s=s+i;


			}
		}

		//wrote after hackathon
		public static int P8Attempt2(){ //will continue to work on this
			int s=0;
			int i=1;
			while (i<=300){
				if (i%2==1){
					s-=i;
				}
				else{
					s+=i;
				}
				i++;
			}
			while (i<=600){
				if ((i-301)%3==0){
					s-=i;
				}
				else{
					s+=i;
				}
				i++;
			}
			while(i<=900){
				if ((i-601)%5==0){
					s-=i;
				}
				else{
					s+=i;
				}
				i++;
			}
			int f=1;
			int m=900;
			int[] arr=new int[(int)(Math.log(1000-900)/Math.log(2))];
			int e=0;
			while (m<=1000){
				m=m+f;
				arr[e]=m;
				f=f*2;
				e++;
			}
			while (i<=1000){
				if (isIn(i, arr)){
					s-=i;
				}
				else{
					s+=i;
				}
			}
		}








	public static boolean isIn(int item, int[] arr){
		for (int i=0; i<arr.length; i++){
			if (arr[i]==item){
				return(true);
			}
		}
		return(false);

	}
	public static int fib(int n){
		if (n<=1){
			return(n);
		}
		else{
			return (fib(n-1)+fib(n-2));
		}

	}

}
