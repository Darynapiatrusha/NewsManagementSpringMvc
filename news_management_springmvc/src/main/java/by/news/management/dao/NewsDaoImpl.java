package by.news.management.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import by.news.management.entity.News;

@Repository
public class NewsDaoImpl implements NewsDao {

	@Autowired
	private SessionFactory sessionFactory;

	public NewsDaoImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<News> getListOfNews(int pageId, int total) {
		int start=(pageId-1)*total;
		int end=pageId*total;
		Session currentSession = sessionFactory.getCurrentSession();
		Query<News> theQuery = currentSession.createQuery("from News where status like 'active' order by id", News.class);
		List<News> news = theQuery.getResultList();

		return news.subList(start, end<news.size()?end:news.size());
	}

	@Override
	public News getNews(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		News theNewsView = currentSession.get(News.class, id);
		return theNewsView;
	}

	@Override
	public void addNews(News news) {
		Session currentSession = sessionFactory.getCurrentSession();

		currentSession.saveOrUpdate(news);
	}

	@Override
	public void deleteNews(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query theQuery = 
				currentSession.createQuery("update News set status =:status where id=:newsId");
		theQuery.setParameter("newsId", id);
		theQuery.setParameter("status", "block");
		
		theQuery.executeUpdate();		
	}

	@Override
	public void editNews(News news) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(news);
	}

	@Override
	public int numberOfPages() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<News> theQuery = currentSession.createQuery("from News where status like 'active' order by id", News.class);
		List<News> news = theQuery.getResultList();
		if (news.size() % 10 == 0) {
			return news.size()/ 10;
		} else {
			return news.size()/10 + 1;
		}
	}
}
