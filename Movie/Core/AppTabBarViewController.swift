//
//  AppTabBarViewController.swift
//  Movie
//
//  Created by Yen Dang on 3/5/18.
//  Copyright © 2018 Yen Dang. All rights reserved.
//

import UIKit

class AppTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTab()
        addTabs()
        
    }
    
    private func setUpTab(){
        
    }
    
    private func addTabs(){
        
        let imageInsert =  UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        
        //Add movie list tab.
        let movieListVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeNavigation") as UIViewController
        let movieListTabItem = UITabBarItem()
        movieListTabItem.image = UIImage(named: "tab_movie_list_inactive")?.withRenderingMode(.alwaysOriginal)
        movieListTabItem.selectedImage = UIImage(named: "tab_movie_list")?.withRenderingMode(.alwaysOriginal)
        movieListTabItem.title  = nil
        movieListTabItem.imageInsets  = imageInsert
        movieListVC.tabBarItem = movieListTabItem;
        
        
        //Add search tab.
        let searchVC = UIStoryboard(name : "Search", bundle: nil).instantiateViewController(withIdentifier: "SearchNavigationViewController") as UIViewController
        let searchTabItem = UITabBarItem()
        searchTabItem.image = UIImage(named: "tab_search_inactive")?.withRenderingMode(.alwaysOriginal)
        searchTabItem.selectedImage = UIImage(named: "tab_search")?.withRenderingMode(.alwaysOriginal)
        searchTabItem.title = nil
        searchTabItem.imageInsets = imageInsert
        searchVC.tabBarItem = searchTabItem
        
        
        //Add favorite tab
        let favoriteVC = UIStoryboard(name : "Favorite", bundle: nil).instantiateViewController(withIdentifier: "FavoriteNavigationViewController") as UIViewController
        let favoriteTabItem = UITabBarItem()
        favoriteTabItem.image = UIImage(named: "tab_favorite_inactive")?.withRenderingMode(.alwaysOriginal)
        favoriteTabItem.selectedImage = UIImage(named: "tab_favorite")?.withRenderingMode(.alwaysOriginal)
        favoriteTabItem.title = nil
        favoriteTabItem.imageInsets = imageInsert
        favoriteVC.tabBarItem = favoriteTabItem
        
        
        //Add profile tab
        let profileVC = UIStoryboard(name : "Profile", bundle: nil).instantiateViewController(withIdentifier: "ProfileNavigationViewController") as UIViewController
        let profileTabItem = UITabBarItem()
        profileTabItem.image = UIImage(named: "tab_profile_inactive")?.withRenderingMode(.alwaysOriginal)
        profileTabItem.selectedImage = UIImage(named: "tab_profile")?.withRenderingMode(.alwaysOriginal)
        profileTabItem.title = nil
        profileTabItem.imageInsets = imageInsert
        profileVC.tabBarItem = profileTabItem
        
        viewControllers = [movieListVC,searchVC,favoriteVC,profileVC]
    }
    
}

