package com.baocheng.hw;

import java.util.ArrayList;

public class Demo3 {

	/**
	 * 3,�Ѽ����е�Ԫ�ط�ת
			a,����ѭ��, ѭ��size()/2��
			b,��һ�ν�����һ�������һ��, �ڶ��ν����ڶ����͵����ڶ���
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
