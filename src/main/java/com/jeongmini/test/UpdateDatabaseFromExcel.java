package com.jeongmini.test;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.format.annotation.DateTimeFormat;

public class UpdateDatabaseFromExcel {
	
	public ArrayList<ArrayList<String>> readFilter(String fileName) throws IOException {
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
		FileInputStream fis = new FileInputStream(fileName);

		@SuppressWarnings("resource")
		XSSFWorkbook workbook = new XSSFWorkbook(fis);
		int rowindex = 0;
		int columnindex = 0;		
		ArrayList<ArrayList<String>> filters = new ArrayList<ArrayList<String>>();		
		
		int sheetCn = workbook.getNumberOfSheets();	// 시트 수
		for(int sheetnum=0; sheetnum<sheetCn; sheetnum++) {	// 시트 수만큼 반복
			
			int sheetnum2=sheetnum+1;
			System.out.println("sheet = " + sheetnum2);
			
			XSSFSheet sheet = workbook.getSheetAt(sheetnum);	// 읽어올 시트 선택
			int rows = sheet.getPhysicalNumberOfRows();    // 행의 수
			XSSFRow row = null;
			
			for (rowindex = 1; rowindex < rows; rowindex++) {	// 행의 수만큼 반복

				row = sheet.getRow(rowindex);	// rowindex 에 해당하는 행을 읽는다
				ArrayList<String> filter = new ArrayList<String>();	// 한 행을 읽어서 저장할 변수 선언

				if (row != null) {
					int cells = 13 ;	// 셀의 수
					cells = row.getPhysicalNumberOfCells();    // 열의 수
					for (columnindex = 0; columnindex <= cells; columnindex++) {	// 열의 수만큼 반복
						XSSFCell cell_filter = row.getCell(columnindex);	// 셀값을 읽는다
						String value = "";
								// 셀이 빈값일경우를 위한 널체크
						if (cell_filter == null) {
//							continue;
							value = "";
						} else {
									// 타입별로 내용 읽기
							switch (cell_filter.getCellType()) {
							case XSSFCell.CELL_TYPE_FORMULA:
								value = cell_filter.getCellFormula();
								break;
							case XSSFCell.CELL_TYPE_NUMERIC:
								value = cell_filter.getNumericCellValue() + "";
								break;
							case XSSFCell.CELL_TYPE_STRING:
								value = cell_filter.getStringCellValue() + "";
								break;
							case XSSFCell.CELL_TYPE_BLANK:
								value =  "";
								break;
							case XSSFCell.CELL_TYPE_ERROR:
								value = cell_filter.getErrorCellValue() + "";
								break;
							}
						}
						filter.add(value);	//읽은 셀들을 filter에 추가 (행)
					}
				}
				filters.add(filter); //filter(행)을 filters(열)에 추가
			}
		}
		fis.close();	//파일 읽기 종료
		return filters;	//리스트 반환
	}
	
	
	public Connection getConn() {
		Connection conn = null;
		String dbUrl = "jdbc:mysql://database-1.cxva4q1y2ban.ap-northeast-2.rds.amazonaws.com:33062/movie?useSSL=false";
		String id = "root";
		String pw = "dhrtms80";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.getMessage();
			System.out.println("연결되지 않았습니다.");
		} // 드라이버 연결
		  
		try {
			conn = DriverManager.getConnection(dbUrl, id, pw);
			System.out.println("연결에 성공했습니다.");
		} catch (SQLException e){
			e.printStackTrace();
		}
			return conn;
	}

	public void excute(ArrayList<ArrayList<String>> list) throws IOException {
		  
		Connection  conn  = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
//		String query = "INSERT INTO theater (city, theaterCode, theaterNm, totalScreen, totalSeat, businessNm, status, adress, callNumber, homepage) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		String query = "INSERT INTO movieInfo2022 (openYear, movieCode, title, genre, nation, runningTime, age, openDate, directors, actors, story, createdAt) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, now())";
//		String query = "INSERT INTO runningCurrent (movieCode) values (?)";
		String query2 = "DELETE FROM movieInfo2022";
		
		System.out.println("총 라인 수 : "+list.size());
		
		try {
			conn = getConn();	//데이터베이스 연결
			pstmt = conn.prepareStatement(query);	//쿼리 설정
			pstmt2 = conn.prepareStatement(query2);
			
			pstmt2.executeUpdate();
			
			for(int i=0; i<list.size(); i++) {      //매개변수로 받아온 ArrayList 의 길이만큼 반복한다.

				//읽어온 각 셀들이 자신이 생성해준 table 제약조건과 일치하지 않을 경우 SqlException이 발생한다.
                //그러한 조건이 발생하면 continue 를 해주는 부분을 추가해주면 된다.
				if(list.get(i).isEmpty()) continue;	//행에 값이 없을 경우에 그 행을 제외하고 진행
				
//				pstmt.setString(1, list.get(i).get(0));
//				pstmt.setInt(2, Integer.parseInt(list.get(i).get(1)));
//				pstmt.setString(3, list.get(i).get(2));
//				pstmt.setInt(4, (int)(Double.parseDouble(list.get(i).get(3))));
//				pstmt.setInt(5, (int)(Double.parseDouble(list.get(i).get(4))));
//				pstmt.setString(6, list.get(i).get(5));
//				pstmt.setString(7, list.get(i).get(6));
//				pstmt.setString(8, list.get(i).get(7));
//				pstmt.setString(9, list.get(i).get(8));
//				pstmt.setString(10, list.get(i).get(9));
				
//				SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
//				String test = list.get(i).get(7);
//				Date openDate = null;
				
//				앞의 쿼리에서 물음표에 들어갈 항목들을 순서대로 기입
				pstmt.setInt(1, (int)(Double.parseDouble(list.get(i).get(0))));
				pstmt.setInt(2, (int)(Double.parseDouble(list.get(i).get(1))));
				pstmt.setString(3, list.get(i).get(2));
				pstmt.setString(4, list.get(i).get(3));
				pstmt.setString(5, list.get(i).get(4));
				pstmt.setString(6, list.get(i).get(5));
				pstmt.setString(7, list.get(i).get(6));
				pstmt.setString(8, list.get(i).get(7));
				pstmt.setString(9, list.get(i).get(8));
				pstmt.setString(10, list.get(i).get(9));
				pstmt.setString(11, list.get(i).get(10));
//				pstmt.setString(8, fm.format(openDate));
				
				//update query 실행
				pstmt.executeUpdate();
				
				if(i%1000==0) {
					System.out.println(i+"번 라인 쓰는 중...");
				}
				
			}

			System.out.println("insert를 완료했습니다.");
			   
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(pstmt != null) try { pstmt.close(); } catch (SQLException e) {}
			if(conn  != null) try { conn.close();  } catch (SQLException e) {}
		} // DB 연결에 사용한 객체와 Query수행을 위해 사용한 객체를 닫는다.
	 }

}
