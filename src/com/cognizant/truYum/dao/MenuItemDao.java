package com.cognizant.truYum.dao;

import java.util.List;

import com.cognizant.truYum.model.MenuItem;

public interface MenuItemDao {
public List<MenuItem> getMenuItemListAdmin(); // all items should be displayed
public List<MenuItem> getMenuItemListCustomer(); //depends on DOL AND status
public void modifyMenuItem(MenuItem menuitem); //update the menu items
public MenuItem getMenuItem(long menuItemId); //retrieve the particular menu item
}