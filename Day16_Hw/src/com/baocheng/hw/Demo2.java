package com.baocheng.hw;

import java.util.ArrayList;
import java.util.List;

import com.baocheng.bean.Person;

public class Demo2 {

	/**
	 * 2,把集合中存储多个Person对象,Person有姓名和年龄,找出年龄最大的
		a,定义一个Person类型的变量, 先记住第一个元素
		b,循环遍历集合
		c,用每一个元素和变量比较年龄, 如果集合中的元素比变量记住的年龄大
		d,用变量记住这个年龄较大的元素
		e,返回变量记住的元素
	 */
	public static void main(String[] args) {
//		demo1();
		ArrayList<Person> list = new ArrayList<>();
		list.add(new Person("张三", 23));
		list.add(new Person("李四", 24));
		list.add(new Person("王五", 25));
		list.add(new Person("赵六", 26));
		list.add(new Person("周七", 21));
		
		
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
		
		list.add(new Person("张三", 23));
		list.add(new Person("李四", 24));
		list.add(new Person("王五", 25));
		list.add(new Person("赵六", 26));
		list.add(new Person("周七", 21));
		
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
