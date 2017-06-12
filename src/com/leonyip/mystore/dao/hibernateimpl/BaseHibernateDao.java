package com.leonyip.mystore.dao.hibernateimpl;

import java.io.*;
import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public abstract class BaseHibernateDao {
	public void add(Object item) {
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		session.save(item);
		tx.commit();
	}

	public void delete(Class clazz, Serializable id) {
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		session.delete(session.get(clazz, id));
		tx.commit();
	}

	public void update(Object item) {
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		session.update(item);
		tx.commit();
	}

	public Object get(Class clazz, Serializable id) {
		Session session = HibernateSessionFactory.getSession();
		return session.get(clazz, id);
	}

	public List search(String hql, Map<String, Object> params) {
		Session session = HibernateSessionFactory.getSession();
		Query query = session.createQuery(hql);
		query.setProperties(params);
		return query.list();
	}

	public List searchByPaging(String hql, Map<String, Object> params,
			int pageSize, int pageNum) {
		Session session = HibernateSessionFactory.getSession();
		Query query = session.createQuery(hql);
		query.setProperties(params);
		query.setFirstResult((pageNum - 1) * pageSize);
		query.setMaxResults(pageSize);
		return query.list();
	}

	/*
	 * 查询前5
	 */
	public List searchTopNo(String hql, Map<String, Object> params, int no) {
		Session session = HibernateSessionFactory.getSession();
		Query query = session.createQuery(hql);
		query.setMaxResults(no);
		query.setProperties(params);
		return query.list();
	}
	public Boolean hasSameName(String hql, String userName,
			Map<String, Object> params) {
		Session session = HibernateSessionFactory.getSession();
		Boolean flag = true;
		try {
			Query query = session.createQuery(hql);
			query.setProperties(params);
			if (query.list().size() > 0) {
				flag = true;
			} else {
				flag = false;
			}
		} catch (Exception e) {
			System.out.println("UserDaoImpl.hasSameName() 方法发生异常:");
			e.printStackTrace();
			return flag;
		} finally {
			HibernateSessionFactory.closeSession();
		}
		return flag;
	}
	public Boolean hasUser(String hql, String userName, String password,
			Map<String, Object> params) {
		Session session = HibernateSessionFactory.getSession();
		Boolean flag = true;
		try {
			Query query = session.createQuery(hql);
			query.setProperties(params);
			if (query.list().size() > 0) {
				flag = true;
			} else {
				flag = false;
			}
		} catch (Exception e) {
			System.out.println("UserDaoImpl.hasSameName() 方法发生异常:");
			e.printStackTrace();
			return flag;
		} finally {
			HibernateSessionFactory.closeSession();
		}
		return flag;
	}
	public String getUserType(String hql, Map<String, Object> params) {
		Session session = HibernateSessionFactory.getSession();
		Query query = session.createQuery(hql);
		query.setProperties(params);
		return query.list().toString();
	}
	
}
