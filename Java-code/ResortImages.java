import java.io.*;
import java.util.Scanner;

public class ResortImages{
	public static void main(String args[]) throws Exception{ //Detta program ska hitta hål bland filerna och fylla igen dem. "img2, img3, img5, img7, ..." ska bli "img1, img2, img3, img4, ..."
		if(args[0].length() == 0){
			System.err.println("No folder selected");
		}else{
			String folder = args[0];
			File currTotNumFile = null;
			Scanner numScanner = null;
			currTotNumFile = new File(folder + "/num.txt"); //Hitta hur många bilder det fanns totalt från början
			numScanner = new Scanner(currTotNumFile);
			int imgNum = numScanner.nextInt();
			System.out.println("Total num of imgs before re-sorting: " + imgNum);
			numScanner.close();
			
			File yFile = new File(folder + "/y.txt");
			Scanner ysc = new Scanner(yFile);
			StringBuilder ysb = new StringBuilder();
			
			while(ysc.hasNextLine()){
				ysb.append(ysc.nextLine());
				ysb.append("\n");
			}
			
			String yLines[] = ysb.toString().split("\\n");
			
			for(int i = 1; i <= imgNum; i++){
				File currFile = new File(folder + "/img" + i + ".png");
				if(!currFile.isFile()){ //If the file doesn't exist
					for(int z = imgNum; z > i; z--){ //Find the last file
						File endFile = new File(folder + "/img" + z + ".png");
						if(endFile.isFile()){ //Put it in the missing files place
							boolean ok = endFile.renameTo(currFile);
							if(ok){
								System.out.println("renamed " + endFile + " to " + currFile);
								String tmp = yLines[z-1];
								yLines[i-1] = tmp;
								yLines[z-1] = "0";
								z = i; //Break out of the loop
								imgNum--;
							}
						}
					}
				}
			}
			
			StringBuilder yOut = new StringBuilder();
			for(int i = 0; i < imgNum; i++){
				yOut.append(yLines[i]);
				yOut.append("\n");
			}
			
			PrintWriter pw = new PrintWriter(yFile);
			pw.println(yOut.toString()); //Printa uppdaterade y.txt
			pw.close();
			
			System.out.println("Total num of imgs after re-sorting: " + imgNum);
			FileOutputStream imgNumUpdaterStream = new FileOutputStream(currTotNumFile);
			byte[] newNum = new String(imgNum + "").getBytes(); //Skriv antal bilder till num
			imgNumUpdaterStream.write(newNum);
		}
	}
}