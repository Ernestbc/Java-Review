package com.baocheng.hw;


import java.util.List;
import java.util.ArrayList;

public class Demo4 {

	/**
	 * 4,public static void main(String[] args) {
			List<String> list1 = new ArrayList<>();
			list1.add("b");
			list1.add("f");
			list1.add("e");
			list1.add("c");
			list1.add("a");
			list1.add("d");
			sort1(list1);
			System.out.println(list1);	// a, b, c, d, e, f
			
			List<Integer> list2 = new ArrayList<>();
			list2.add(5);
			list2.add(8);
			list2.add(3);
			list2.add(1);
			list2.add(4);
	
			sort2(list2);
			System.out.println(list2); //1,3,4,5,8
		}
		对集合中添加的元素排序
	 */
	public static void main(String[] args) {
		List<String> list1 = new ArrayList<>();
		list1.add("b");
		list1.add("f");
		list1.add("e");
		list1.add("c");
		list1.add("a");
		list1.add("d");
		sort1(list1);
		System.out.println(list1);	// a, b, c, d, e, f
		
		List<Integer> list2 = new ArrayList<>();
		list2.add(5);
		list2.add(8);
		list2.add(3);
		list2.add(1);
		list2.add(4);

		sort2(list2);
		System.out.println(list2); //1,3,4,5,8
	}

	private static void sort1(List<String> list1) {
		for (int i = 0; i < list1.size(); i++) {
			
		}
		
	}
	
	private static void sort2(List<Integer> list2) {
	
	}

}
