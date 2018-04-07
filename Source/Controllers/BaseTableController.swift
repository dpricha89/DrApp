//
//  BaseTableController.swift
//  DrApp
//
//  Created by David Richards on 6/21/17.
//  Copyright © 2017 David Richards. All rights reserved.
//

import UIKit
import DZNEmptyDataSet
import TTGSnackbar

open class BaseTableController: UITableViewController, DZNEmptyDataSetSource, DZNEmptyDataSetDelegate {
    
    // public params
    
    // shared libs
    public let loading = Loading()
    public let alerter = Alerter()
    public let refreshController = UIRefreshControl()
    public let snackbar = TTGSnackbar.init(message: "Loading...", duration: .middle)

    open override func viewDidLoad() {
        super.viewDidLoad()
        
        // setup table
        self.setupTable()
        
        // This is needed for the auto cell height cells
        tableView.estimatedRowHeight = LibConst.defaultRowEstimate
    }

    open override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // This ensures that the auto sizing of the description cell works.
        // This is a bug and should be revisited
        // self.tableView.reloadData()
    }

    open func setupTable(){
        self.tableView.register(UserImageCell.self, forCellReuseIdentifier: "UserImageCell")
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Default")
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
        self.tableView.register(DescriptionCell.self, forCellReuseIdentifier: "DescriptionCell")
        self.tableView.register(IconRow.self, forCellReuseIdentifier: "IconRow")
        self.tableView.register(TitleCell.self, forCellReuseIdentifier: "TitleCell")        
        self.tableView.register(DetailsCell.self, forCellReuseIdentifier: "DetailsCell")
        self.tableView.register(MapCell.self, forCellReuseIdentifier: "MapCell")
        self.tableView.register(SlideshowCell.self, forCellReuseIdentifier: "SlideshowCell")
        self.tableView.register(BasicImageCell.self, forCellReuseIdentifier: "BasicImageCell")
        self.tableView.register(AboutHostCell.self, forCellReuseIdentifier: "AboutHostCell")
    }
    
}
