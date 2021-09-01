//
//  ViewController.swift
//  ToDo
//
//  Created by Admin on 23/07/2021.
//
import Foundation

struct Constants {
  static let MainBundleIdentifer = "Main"
  static let ItemListViewControllerIdentifier = "ItemListViewController"
  static let DetailViewControllerIdentifier = "DetailViewController"
  static let InputViewControllerIndentifier = "InputViewController"
  
  static let ItemCellIdentifier = "ItemCell"

  static let userName = "Crystal"
  static let password = "1234"
}

extension Notification {
  static let ItemSelectedNotification = Notification.Name("ItemSelectedNotification")
}
