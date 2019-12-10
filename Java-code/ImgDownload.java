import java.io.*;
import java.net.*;
import java.util.Scanner;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;

import javax.imageio.ImageIO;

public class ImgDownload{ //Denna klass tar en .txt fil med html och laddar ner alla bilder på sidan som matchar mönstren nedan
	public static void main(String[] args) throws Exception{
		if(args[0].length() == 0){
			System.err.println("No folder selected");
		}else{
			String folder = args[0];
			File inputLinks = new File(folder + "/" + folder + ".txt"); //.txt filen ska ligga i en mapp som heter samma sak som den
			Scanner textScanner = new Scanner(inputLinks);
			textScanner.useDelimiter(" "); //Dela strängen i tokens på mellanslag
			File currTotNumFile = new File(folder + "/num.txt"); //Vi vill inte skriva över de bilder vi redan har, utan sparar antalet bilder vi har gjort hittils i en fil
			Scanner numScanner = new Scanner(currTotNumFile);
			int imgNum = numScanner.nextInt();
			System.out.println("currently on num: " + imgNum);
			numScanner.close();
			
			StringBuilder sb = new StringBuilder(); //En stringbuilder för att skapa y.txt
			
			while(textScanner.hasNext()){ //Så länge det fortfarande finns tokens kvar
				String currUrl = textScanner.next();
				if(currUrl.contains("src=\"https://pbs.twimg.com/media") || currUrl.contains("src=\"https://pbs.twimg.com/card")){ //Gå genom dem tills man hittar något som har detta i sig
					currUrl = currUrl.substring(5, (currUrl.length()-1)); //Klipp av början och slutet, så man blir kvar med bara URL:n
					currUrl = currUrl.replace("&amp;", "&"); //I HTML:n så görs & om till &amp;   vi vill göra tillbaka den ändringen
					
					boolean lookForLikes = true;
					int numLikes = 0;
					String currLikes = ""; //När vi väl hittat en bild så ska vi kolla framåt i HTML efter den rad som innehåller "... gilla-markeringar"
					while(lookForLikes){
						String nextToken = textScanner.next();
						if(nextToken.contains("gilla-markeringar\"")){ //Token innan den stängen kommer innehålla antalet likes
							numLikes = Integer.parseInt(currLikes);
							if(numLikes > 0 && numLikes < 100){
								numLikes = 1;
							} else if(numLikes > 100 && numLikes < 1000){
								numLikes = 2;
							} else if(numLikes > 1000 && numLikes < 5000){
								numLikes = 3;
							} else if(numLikes > 5000 && numLikes < 10000){
								numLikes = 4;
							} else if(numLikes > 10000 && numLikes < 50000){
								numLikes = 5;
							} else if(numLikes > 50000 && numLikes < 100000){
								numLikes = 6;
							} else if(numLikes > 100000 && numLikes < 500000){
								numLikes = 7;
							} else if(numLikes > 500000 && numLikes < 1000000){
								numLikes = 8;
							} else if(numLikes > 1000000 && numLikes < 5000000){
								numLikes = 9;
							} else{
								numLikes = 10;
							}
							lookForLikes = false;
						} else{
							currLikes = nextToken;
						}
					}
					
					imgNum++;
					System.out.println(imgNum + ": " + currUrl);
					try{
						URL url = new URL(currUrl);
						InputStream in = new BufferedInputStream(url.openStream()); //Öppna URL:n till en inputstream
						ByteArrayOutputStream out = new ByteArrayOutputStream();
						byte[] buf = new byte[1024];
						int n = 0;
						while (-1!=(n=in.read(buf))) //Läs inputstreamen till en buffer
						{
						   out.write(buf, 0, n);
						}
						out.close();
						in.close();
						byte[] response = out.toByteArray(); //Sammanställ buffern
						
						String imgLocation = folder + "/img" + imgNum + ".png";
						
						FileOutputStream fos = new FileOutputStream(imgLocation); //Skriv ut till en fil
						fos.write(response);
						fos.close();
						
						File inputFile = new File(imgLocation);
						BufferedImage inputImg = ImageIO.read(inputFile); //Öppna den nyligen skapade filen
						
						BufferedImage outputImg = new BufferedImage(100, 100, BufferedImage.TYPE_BYTE_GRAY); //Förbered en outputbuffer i svartvitt
						Graphics2D g2d = outputImg.createGraphics();
						g2d.drawImage(inputImg, 0, 0, 100, 100, null); //Rita filen till outputbuffern, skala ned den till rätt storlek
						g2d.dispose();
						
						ImageIO.write(outputImg, "png", new File(imgLocation)); //Skriv buffern till filen, skriver över den originella filen
						
						sb.append(numLikes + "\n"); //Appenda like-antalet till stringbuildern
					} catch(Exception e){
						System.out.println(e);
					}
				}
			} //När det inte längre finns några tokens
			FileOutputStream imgNumUpdaterStream = new FileOutputStream(currTotNumFile);
			byte[] newNum = new String(imgNum + "").getBytes(); //Skriv antal bilder till num
			imgNumUpdaterStream.write(newNum);
			textScanner.close();
			System.out.println("Printing likes to y.txt");
			File y = new File(folder + "/y.txt");
			PrintWriter pw = new PrintWriter(y);
			pw.println(sb.toString()); //Printa y.txt, sen är allt klart
			pw.close();
		}
		System.out.println("Finished");
	}
}

