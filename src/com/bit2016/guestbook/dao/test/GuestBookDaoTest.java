package com.bit2016.guestbook.dao.test;

import java.util.*;

import com.bit2016.guestbook.dao.*;
import com.bit2016.guestbook.vo.*;

public class GuestBookDaoTest {
	public static void main(String[] args) {
		//insertTest();
		//getListTest();
		
		deleteTest();
		getListTest();
	}
	
	public static void insertTest() {
		GuestBookVo vo = new GuestBookVo();
		vo.setName("김사나");
		vo.setContent("트와이스");
		vo.setPassword("1222222");
		
		GuestBookDao dao = new GuestBookDao();
		dao.insert(vo);
	}
	
	public static void deleteTest() {
		GuestBookVo vo = new GuestBookVo();
		vo.setNo(9L);
		vo.setPassword("1234");

		GuestBookDao dao = new GuestBookDao();
		dao.delete(vo);
	}
	
	public static void getListTest() {
		GuestBookDao dao = new GuestBookDao();
		List<GuestBookVo> list = dao.getList();
		for(GuestBookVo vo : list) {
			System.out.println(vo);
		}
	}
}
