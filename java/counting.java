public class counting
{
	public static void main(String args[])
	{
		for(int i=0;i<=1000;i++)
		{
			System.out.println(i);
			try
			{
				Thread.sleep(5000);
			}
			catch(Exception e)
			{
				System.out.println("Error: "+e);
			}
		}
	}
}
