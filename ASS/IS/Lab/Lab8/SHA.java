import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Scanner;  

public class SHA {
	public static String encryptThisString(String input)
	{
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-1");

			byte[] messageDigest = md.digest(input.getBytes());

			BigInteger no = new BigInteger(1, messageDigest);

			String hashtext = no.toString(16);

			while (hashtext.length() < 32) {
				hashtext = "0" + hashtext;
			}

			return hashtext;
		}

		catch (NoSuchAlgorithmException e) {
			throw new RuntimeException(e);
		}
	}

	public static void main(String args[]) throws
									NoSuchAlgorithmException
	{

		System.out.println("HashCode Generated by SHA-1 for: ");

		String s2 = "Hello World";
		System.out.println("Sample : \n" + s2 + " : " + encryptThisString(s2));
		
		Scanner inp = new Scanner(System.in);  // Create a Scanner object
        System.out.print("\nEnter String : \t");
 
		String s1 = inp.nextLine();
		
		System.out.println("\n" + s1 + " : " + encryptThisString(s1));


	}
}
