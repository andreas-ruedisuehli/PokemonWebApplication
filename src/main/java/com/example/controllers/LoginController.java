package com.example.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.beans.Collection;
import com.example.beans.User;
import com.example.dao.CollectionDAO;
import com.example.dao.UserDAO;

@Controller
public class LoginController {

	@Autowired
	UserDAO userDAO;

	@Autowired
	CollectionDAO collectionDAO;

	@Autowired
	private HttpServletRequest request;

	@RequestMapping("/")
	public String login() {
		return "login";
	}

	@RequestMapping("/signup")
	public String signup() {
		return "SignUp";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(@ModelAttribute("user") User user, Model model) {

		if (user.getEmail().isEmpty() || user.getPassword().isEmpty()) {
			model.addAttribute("invalidLogin", "You must fill out Email & Password to login");
			return "login";
		}

		User dbUser = null;

		try {
			dbUser = userDAO.getUserByEmail(user.getEmail());
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		user.setPassword(DigestUtils.sha256Hex(user.getPassword()));
		if (dbUser == null || !dbUser.getPassword().equals(user.getPassword())) {
			model.addAttribute("invalidLogin", "Invalid username or password");
			return "login";
		}

		List<Collection> collectionList = collectionDAO.getCollections();
		model.addAttribute("collectionList", collectionList);

		HttpSession session = request.getSession();
		session.setAttribute("userId", dbUser.getId());

		return "Collections";
	}

	@RequestMapping(value = "/signupForm", method = RequestMethod.POST)
	public String signupForm(@ModelAttribute("user") User user, Model model) {

		if (user.getName().isEmpty() || user.getPassword().isEmpty() || user.getEmail().isEmpty()) {
			model.addAttribute("invalidLogin", "Failed to signup, please fill in all the fields");
			return "login";
		}

		user.setPassword(DigestUtils.sha256Hex(user.getPassword()));

		userDAO.save(user);
		return login();
	}

	@RequestMapping(value = "/updateProfile", method = RequestMethod.POST)
	public String updateProfile(@ModelAttribute("user") User user, Model model) {

		HttpSession session = request.getSession();
		int userId = (Integer) session.getAttribute("userId");
		user.setPassword(DigestUtils.sha256Hex(user.getPassword()));
		user.setId(userId);

		userDAO.update(user);

		List<Collection> collectionList = collectionDAO.getCollections();
		model.addAttribute("collectionList", collectionList);

		return "Collections";
	}

	@RequestMapping("/myprofile")
	public String myProfile() {
		return "myprofile";
	}

	@RequestMapping("/logout")
	public String logout() {
		HttpSession session = request.getSession();
		session.invalidate();
		return "login";
	}

}
