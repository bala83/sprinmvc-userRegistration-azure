package com.bala.azure.springmvc.controller;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.bala.azure.springmvc.model.SendMailObj;
import com.bala.azure.springmvc.model.User;
import com.bala.azure.springmvc.service.UserService;


@Controller
public class RegistrationController {
	@Autowired
	public UserService userService;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("user", new User());

		
		return mav;
	}

	@RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("user") User user) {
		userService.register(user);
		
		  final String url = "https://prod-22.centralus.logic.azure.com/workflows/b5ff6010bcb647f088c993735e9d576b/triggers/manual/paths/invoke/sendmail?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=K2ceYM0BZULa1bwNw5-12hfNTpJp-JvZoh8xkby1os0";
		   SendMailObj sendmail = new SendMailObj();
		   sendmail.setName(user.getFirstname());
		   sendmail.setTo(user.getEmail());
/*		    RestTemplate restTemplate = new RestTemplate();
		    MappingJackson2HttpMessageConverter jackson = new MappingJackson2HttpMessageConverter();
		    		jackson.setSupportedMediaTypes(Arrays.asList(MediaType.APPLICATION_JSON));
		    restTemplate.getMessageConverters().add(jackson);
		    
		    restTemplate.postForEntity(url, sendmail, String.class);
		    
		    
		    
		    RestTemplate restTemplate = new RestTemplate();*/
/*		    MultiValueMap<String, String> body = new LinkedMultiValueMap<String, String>();
		    body.add("client_id", "aViwaUZXir44tcdmr6bg7m");
		    body.add("client_secret", "65d952744a49774bcf24bcd32c521619");
		    body.add("grant_type", "client_credentials");
		    HttpHeaders headers = new HttpHeaders();
		    headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		    headers.add("Content-Type", "application/json");
		    HttpEntity<SendMailObj> entity = new HttpEntity<SendMailObj>(sendmail, headers);
		    ResponseEntity<String> res = restTemplate.exchange(
		    		url, HttpMethod.POST, entity, String.class);
		    System.out.println(res.getBody());    	*/
		return new ModelAndView("welcome", "firstname", user.getFirstname());
	}
	
	
}