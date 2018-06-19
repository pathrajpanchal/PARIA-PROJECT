package trial;

import java.io.File;
import java.io.FileOutputStream;

import org.apache.poi.wp.usermodel.CharacterRun;
import org.apache.poi.xwpf.extractor.XWPFWordExtractor;
import org.apache.poi.xwpf.usermodel.Borders;
import org.apache.poi.xwpf.usermodel.ParagraphAlignment;
import org.apache.poi.xwpf.usermodel.VerticalAlign;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFRun;
import org.apache.poi.xwpf.usermodel.XWPFTable;
import org.apache.poi.xwpf.usermodel.XWPFTableRow;

public class Createword 
{
	public static void main(String a[]) throws Exception
	{
		File f=new File("createdocument.docx");
		XWPFDocument document = new XWPFDocument();//for work in word document
		FileOutputStream out =new FileOutputStream(f);
		//create paragraph
		XWPFParagraph paragraph= document.createParagraph();
		XWPFRun run=paragraph.createRun();
		
		//setting the border
		paragraph.setBorderBottom(Borders.BASIC_BLACK_DASHES);
		paragraph.setBorderLeft(Borders.BABY_RATTLE);
		paragraph.setBorderRight(Borders.BASIC_BLACK_SQUARES);
		paragraph.setBorderTop(Borders.BASIC_THIN_LINES);
		run.setText("this is done by java program");
		
		//creating table
		XWPFTable table=document.createTable();
			//creating row
		XWPFTableRow tablerowone=table.getRow(0);
				//creating colums of following row
		tablerowone.getCell(0).setText("this is done by java program");//for cell position initialization
		tablerowone.addNewTableCell().setText("this is also done by java program");//for getting new cell in corresponding row
		tablerowone.addNewTableCell().setText("this is really done by java");
						//tablerowone.getCell(2).setText("this is really done by java program");;   this will not work for first row
			//creating second row
		XWPFTableRow tablerowtwo=table.createRow();
				//creating colums
		tablerowtwo.getCell(0).setText("panchal");
		tablerowtwo.getCell(1).setText("parthraj");
		tablerowtwo.getCell(2).setText("harshadbhai");
		//tablerowtwo.getCell(3).setText("just kidding");
		
		//FOR FONT STYLE AND ETC
		XWPFParagraph paragraph1=document.createParagraph();
		XWPFRun run1=paragraph1.createRun();
		run1.setBold(true);
		run1.setItalic(true);
		run1.setText("this is styled by java program");
		
		XWPFParagraph paragraph2=document.createParagraph();
		paragraph2.setAlignment(ParagraphAlignment.CENTER);
		XWPFRun run2=paragraph2.createRun();
		run2.setTextPosition(300);//it is for vertical specing
		run2.setText("spacing done by this");
		
		XWPFParagraph paragraph3=document.createParagraph();
		XWPFRun run3=paragraph3.createRun();
		paragraph3.setAlignment(ParagraphAlignment.RIGHT);
		run3.setStrike(true);
		run3.setFontSize(30);
		run3.setSubscript(VerticalAlign.SUBSCRIPT);
		run3.setText("its is strike through");
		
		//NOW TO GET DATA FROM A WORD FILE
		
		XWPFWordExtractor docx=new XWPFWordExtractor(document);
		System.out.println("content of the word file is_____________");
		System.out.println(docx.getText());
		
		//changing text of document
		
		
		
		
		
		document.write(out);//it is like commit command
		out.close();
		System.out.println("done");
		
		
		
	}
}
