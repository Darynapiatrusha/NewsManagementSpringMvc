package by.news.management.service;

import java.util.List;

import by.news.management.entity.News;

public interface NewsService {
	public List<News> getListOfNews(int pageId, int total);
	public int numberOfPages();
	public News getNews(int id);

	public void addNews(News news);

	public void deleteNews(int id);

	public void editNews(News news);
}
