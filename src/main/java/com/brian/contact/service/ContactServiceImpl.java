package com.brian.contact.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.brian.contact.dao.ContactDAO;
import com.brian.contact.form.Contact;

@Service
public class ContactServiceImpl implements ContactService {
	@Autowired
	 private ContactDAO contactDAO;

	 @Transactional
	 public void addContact(Contact contact) {
	 contactDAO.addContact(contact);
	 }

	 @Transactional
	 public List<Contact> listContact() {

	 return contactDAO.listContact();
	 }

	 @Transactional
	 public void removeContact(Integer id) {
	 contactDAO.removeContact(id);
	 }
	 @Transactional
	 public void updateContact(Contact contact) {
		 contactDAO.updateContact(contact);
	 }
	 @Transactional
	 public Contact getContactById(Integer id) {
		 return contactDAO.getContactById(id);
	 }
	 
	}
	


