package com.entity;

import java.util.ArrayList;
import java.util.List;

public class Page<E> {
	public List<E> paging(List<E> list, int pagesize, int pagenum){
		List<E> list2=new ArrayList<>();
		int total=list.size();
		int start=pagesize*(pagenum-1);
		int end= pagesize*pagenum;
		if (total<=end) {
			for (int i = start; i < total; i++) {
				list2.add(list.get(i));
			}
			return list2;
		}else {
			for (int i = start; i < end; i++) {
				list2.add(list.get(i));
			}
			return list2;
		}
 	}
}
