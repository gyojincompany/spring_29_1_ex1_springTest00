package com.gyojincompany.spring_29_1.dao;

import java.util.ArrayList;

import com.gyojincompany.spring_29_1.dto.ContentDto;

public interface IDao {
	
	public ArrayList<ContentDto> listDao();
	public void writeDao(String mwriter, String mcontent);
	public void deleteDao(String mnum);
	public ContentDto mviewDao(String mnum);
}
