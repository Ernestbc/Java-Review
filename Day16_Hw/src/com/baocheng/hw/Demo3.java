package com.baocheng.hw;

import java.util.ArrayList;

public class Demo3 {

	/**
	 * 3,把集合中的元素反转
			a,定义循环, 循环size()/2次
			b,第一次交换第一个和最后一个, 第二次交换第二个和倒数第二个
	 */
	public static void main(String[] args) {
		ArrayList<String> list = new ArrayList<>();
		list.add("a");
		list.add("b");
		list.add("c");
		list.add("d");
		list.add("e");
		
		System.out.println(toReverse(list));
		
	}

	private static ArrayList<String> toReverse(ArrayList<String> list) {
		int i = list.size();
		if (i % 2 == 0 ) {
			for (int j = 0; j < i/2; j++) {
				swap(list,j,i-j);
			}
		}else {
			for (int j = 0; j < i/2; j++) {
				swap(list, j, i-j-1);
			}
		}
		
		return list;
	}

	private static void swap(ArrayList<String> list, int j, int i) {
		String temp = list.get(i);
		list.set(i, list.get(j));
		list.set(j, temp);
	}

}
