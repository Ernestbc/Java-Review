package com.baocheng.hw;

import java.util.ArrayList;
import java.util.Iterator;

public class Demo1 {

	/**
	 * 1,定义一个方法swap()传入集合和两个角标使集合中元素交换位置
			a,定义一个临时变量, 记住其中一个元素
			b,用第一个位置存放第二个位置上的元素
			c, 用第二个位置存放临时变量记住的元素
	 */
	public static void main(String[] args) {
		ArrayList list = new ArrayList();
		list.add("a");
		list.add("b");
		list.add("c");
		list.add("d");
		list.add("e");
		
		swap(list, 0, 4);
		System.out.println(list);
		
	}
	
	
	public static void swap(ArrayList list,int i ,int j){
		Object temp = list.get(i);
		list.set(i,list.get(j));
		list.set(j, temp);
		
	}

}
