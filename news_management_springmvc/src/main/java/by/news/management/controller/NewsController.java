package by.news.management.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import by.news.management.entity.News;
import by.news.management.service.NewsService;

@Controller
@RequestMapping("/news")
public class NewsController {

	@Autowired
	private NewsService newsService;

	@RequestMapping("/list/{page}")
	public String listNews(@PathVariable Integer page, Model theModel) throws Exception{
		int total = 10;
		List<News> theNews = newsService.getListOfNews(page,total);
		int theTotalPages = newsService.numberOfPages();
		theModel.addAttribute("totalPages", theTotalPages);
		theModel.addAttribute("news", theNews);
		theModel.addAttribute("currentPage", page);

		return "newslist";
	}

	@RequestMapping("/showNews")
	public String showNews(@RequestParam("newsId") int theId, Model theModel) throws Exception{

		News theNews = newsService.getNews(theId);

		theModel.addAttribute("news", theNews);

		return "news";
	}

	@RequestMapping("/showAddNews")
	public String showAddNews(@ModelAttribute("news") News theNews) throws Exception {

		return "addnews";
	}

	@RequestMapping("/showEditNews")
	public String showEditNews(@RequestParam("newsId") int theId, Model theModel) throws Exception{

		News theNews = newsService.getNews(theId);

		theModel.addAttribute("news", theNews);

		return "editnews";
	}

	@PostMapping("/addNews")
	public String addNews(@Valid @ModelAttribute("news") News theNews, BindingResult theBindingResult) throws Exception{
		if (theBindingResult.hasErrors()) {
			return "addnews";
		} else {
			newsService.addNews(theNews);
			return "redirect:/news/list/1";
		}
	}

	@PostMapping("/editNews")
	public String editNews(@Valid @ModelAttribute("news") News theNews, BindingResult theBindingResult) throws Exception{
		if (theBindingResult.hasErrors()) {
			return "editnews";
		} else {
			newsService.editNews(theNews);
			return "redirect:/news/list/1";
		}
	}

	@GetMapping("/deleteNews")
	public String deleteNews(@RequestParam("newsId") int theId) throws Exception{

		newsService.deleteNews(theId);

		return "redirect:/news/list/1";
	}
}
