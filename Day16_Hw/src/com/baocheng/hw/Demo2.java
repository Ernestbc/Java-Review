package com.baocheng.hw;

import java.util.ArrayList;
import java.util.List;

import com.baocheng.bean.Person;

public class Demo2 {

	/**
	 * 2,�Ѽ����д洢���Person����,Person������������,�ҳ���������
		a,����һ��Person���͵ı���, �ȼ�ס��һ��Ԫ��
		b,ѭ����������
		c,��ÿһ��Ԫ�غͱ����Ƚ�����, ��������е�Ԫ�رȱ�����ס�������
		d,�ñ�����ס�������ϴ��Ԫ��
		e,���ر�����ס��Ԫ��
	 */
	public static void main(String[] args) {
//		demo1();
		ArrayList<Person> list = new ArrayList<>();
		list.add(new Person("����", 23));
		list.add(new Person("����", 24));
		list.add(new Person("����", 25));
		list.add(new Person("����", 26));
		list.add(new Person("����", 21));
		
		
		System.out.println(getMax(list));
		
		
	}	
	
	
	private static Person getMax(ArrayList<Person> list) {
		Person p = (Person)list.get(0);
		for (Person person : list) {
			Person temp = person;
			if (p.getAge() < temp.getAge()) {
				p = temp;
			}
		}
		
		return p;
		
	}

	
	





	private static void demo1() {
		List list = new ArrayList<>();
		
		list.add(new Person("����", 23));
		list.add(new Person("����", 24));
		list.add(new Person("����", 25));
		list.add(new Person("����", 26));
		list.add(new Person("����", 21));
		
//		System.out.println(getMax(list));
	}

/*	private static Person getMax(List list) {
		Person p = (Person)list.get(0);
		for (Object object : list) {
			Person temp = (Person)object;
			if (p.getAge() < temp.getAge()) {
				p = temp;
			}
		}
		
		return p;
	}*/

	/*public static Person getMax(List list){
//		ArrayList newlist = new ArrayList();
		Person p = (Person)list.
		for (Object object : list) {
			Person temp = (Person)object;
			if (p.getAge()<temp.getAge()) {
//				System.out.println(temp.getName()+"..."+temp.getAge());
				return temp;
			}
		}
	}*/
	
}
