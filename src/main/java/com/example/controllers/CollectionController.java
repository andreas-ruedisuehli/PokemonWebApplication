package com.example.controllers;

import java.util.Comparator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.beans.Card;
import com.example.beans.Collection;
import com.example.dao.CardDAO;
import com.example.dao.CollectionDAO;
import com.example.dao.UserCardDAO;

@Controller
public class CollectionController {

	@Autowired
	CardDAO cardDAO;

	@Autowired
	CollectionDAO collectionDAO;

	@Autowired
	UserCardDAO userCardDAO;

	@Autowired
	private HttpServletRequest request;

	@RequestMapping("/openCollection")
	public String individualCollection(@RequestParam("id") int id, Model model) {

		List<Card> cardList = cardDAO.getCardsByCollectionId(id);
		cardList.sort(Comparator.comparing(Card::getName));
		model.addAttribute("cardList", cardList);

		model.addAttribute("collectionName", collectionDAO.getCollectionById(id).getName());

		return "IndividualCollection";
	}

	@RequestMapping("/search")
	public String search(@RequestParam("search") String search, Model model) {

		List<Card> cardList = cardDAO.getCardsBySearch(search);
		model.addAttribute("cardList", cardList);
		
		return "searchcards";
	}

	@RequestMapping("/viewCard")
	public String viewCard(@RequestParam("id") int id, Model model) {
		Card card = cardDAO.getCardById(id);
		model.addAttribute("card", card);

		HttpSession session = request.getSession();
		int userId = (Integer) session.getAttribute("userId");

		boolean isFavourite = userCardDAO.getFavourite(userId, id) > 0 ? true : false;
		boolean isCollection = userCardDAO.getCollection(userId, id) > 0 ? true : false;

		model.addAttribute("isFavourite", isFavourite);
		model.addAttribute("isCollection", isCollection);

		System.out.println("viewcard: " + card.toString() + " isFavourte: " + isFavourite + ", isCOllection:  "
				+ isCollection + "  ,UseriD : " + userId);

		return "card";
	}

	@RequestMapping(value = "/allCollections")
	public String allCollections(Model model) {

		List<Collection> collectionList = collectionDAO.getCollections();
		model.addAttribute("collectionList", collectionList);

		return "Collections";
	}

	@RequestMapping(value = "/addRemoveFavourite")
	public String addRemoveFavourite(@RequestParam("cardId") int cardId, @RequestParam("status") boolean status,
			Model model) {

		System.out.println("addRemoveFavourite, cardid: " + cardId + "  , Status: " + status);
		HttpSession session = request.getSession();
		int userId = (Integer) session.getAttribute("userId");

		if (status)
			userCardDAO.saveFavourite(userId, cardId);
		else
			userCardDAO.deleteFavourite(userId, cardId);

		return viewCard(cardId, model);
	}

	@RequestMapping(value = "/addRemoveCollection")
	public String addRemoveCollection(@RequestParam("cardId") int cardId, @RequestParam("status") boolean status,
			Model model) {

		System.out.println("addRemoveCollection, cardid: " + cardId + "  , Status: " + status);
		HttpSession session = request.getSession();
		int userId = (Integer) session.getAttribute("userId");

		if (status)
			userCardDAO.saveCollection(userId, cardId);
		else
			userCardDAO.deleteCollection(userId, cardId);

		return viewCard(cardId, model);
	}

	@RequestMapping(value = "/myCollections")
	public String myCollection(Model model) {

		HttpSession session = request.getSession();
		int userId = (Integer) session.getAttribute("userId");

		List<Card> cardList = userCardDAO.getCollectionCards(userId);
		model.addAttribute("cardList", cardList);

		model.addAttribute("collectionList", collectionDAO.getCollections());

		return "myCollection";
	}

	@RequestMapping(value = "/favourites")
	public String favourites(Model model) {

		HttpSession session = request.getSession();
		int userId = (Integer) session.getAttribute("userId");

		List<Card> cardList = userCardDAO.getFavouriteCards(userId);
		model.addAttribute("cardList", cardList);

		model.addAttribute("collectionList", collectionDAO.getCollections());

		return "favourite";
	}

}
