package com.baocheng.hw;

import java.util.ArrayList;
import java.util.Iterator;

public class Demo1 {

	/**
	 * 1,����һ������swap()���뼯�Ϻ������Ǳ�ʹ������Ԫ�ؽ���λ��
			a,����һ����ʱ����, ��ס����һ��Ԫ��
			b,�õ�һ��λ�ô�ŵڶ���λ���ϵ�Ԫ��
			c, �õڶ���λ�ô����ʱ������ס��Ԫ��
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
