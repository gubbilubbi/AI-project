
public class LoadWriter{
	public static void main(String args[]){
		int amountImgs = Integer.parseInt(args[0]);
		int testAmount = Integer.parseInt(args[1]);
		
		int amountLim = amountImgs-testAmount;
		for(int i = 1; i <= amountLim; i++){
			System.out.println("img" + i + " = load('img" + i + ".mat');");
		}
		for(int i = 1; i <= amountLim; i++){
			System.out.println("img" + i + "T = transpose(img" + i + ".A(:));");
		}
		System.out.print("matrix = [");
		for(int i = 1; i <= amountLim; i++){
			System.out.print("img" + i + "T; ");
		}
		System.out.print("];");
		
		System.out.println();
		if(testAmount > 0){
			for(int i = (amountImgs-testAmount)+1; i <= amountImgs; i++){
				System.out.println("imgTest" + i + " = load('img" + i + ".mat');");
			}
			for(int i = (amountImgs-testAmount)+1; i <= amountImgs; i++){
				System.out.println("imgTest" + i + "T = transpose(img" + i + ".A(:));");
			}
			System.out.print("testMatrix = [");
			for(int i = (amountImgs-testAmount)+1; i <= amountImgs; i++){
				System.out.print("imgTest" + i + "T; ");
			}
			System.out.print("];");
		}
	}
}