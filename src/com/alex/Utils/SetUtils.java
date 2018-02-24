package com.alex.Utils;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import com.alex.entity.Posts;

public class SetUtils {
	public static <T> List<T> setToList(Set<T> sets) {
		List<T> list = new ArrayList<>();
		if (sets != null) {
			Iterator<T> ita = sets.iterator();
			while (ita.hasNext()) {
				T object =  ita.next();
				list.add(object);
			}
		}
		return list;
	}

	public static <T> List<T> sortList(List<? extends T> list) {
		List<T> tmpList = new ArrayList<>(list);
		tmpList.sort(new Comparator<T>() {

			@Override
			public int compare(T o1, T o2) {
				// TODO Auto-generated method stub
				int status = 0;
				switch (list.getClass().toString()) {
				case "Posts":
					Posts p1 = (Posts) o1;
					Posts p2 = (Posts) o2;
					if (p1.getPublishTime() > p2.getReadeCounts())
						status = 1;
					else if (p1.getPublishTime() == p2.getPublishTime())
						status = 0;
					else
						status = -1;
					break;
				case "Comments":

					break;
				case "Notice":
					break;

				default:
					break;
				}
				return status;
			}
		});
		return tmpList;
	}

}