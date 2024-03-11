package by.news.management.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import by.news.management.dao.NewsDao;
import by.news.management.entity.News;

@Service("newsService")
public class NewsServiceImpl implements NewsService {
	@Autowired
	private NewsDao newsDAO;

	@Override
	@Transactional
	public List<News> getListOfNews(int  pageId, int total) {
		return newsDAO.getListOfNews(pageId, total);
	}
	@Override
	@Transactional
	public int numberOfPages() {
		return newsDAO.numberOfPages();
	}
	
	@Override
	@Transactional
	public News getNews(int id) {
		return newsDAO.getNews(id);
	}

	@Override
	@Transactional
	public void addNews(News news) {
		newsDAO.addNews(news);
	}

	@Override
	@Transactional
	public void deleteNews(int id) {
		newsDAO.deleteNews(id);
	}

	@Override
	@Transactional
	public void editNews(News news) {
		newsDAO.editNews(news);
	}

}
