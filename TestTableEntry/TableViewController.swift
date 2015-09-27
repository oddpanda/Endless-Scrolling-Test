//
//  TableViewController.swift
//  TestTableEntry
//
//  Created by Shaun Gillon on 27/09/2015.
//  Copyright © 2015 Odd Panda Design Ltd. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var list : NSMutableArray! = ["Bob","Charlie","Ben", "Bob", "Boobs","Bob","Charlie","Ben", "Bob", "Boobs","Bob","Charlie","Ben", "Bob", "Boobs"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.contentInset = UIEdgeInsets(top:0, left:0, bottom:50,right:0)
        tableView.registerNib(UINib(nibName: "OfferCell", bundle: nil), forCellReuseIdentifier: "offerCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return list.count
    }

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell :OfferTableViewCell!
        cell = tableView.dequeueReusableCellWithIdentifier("offerCell", forIndexPath: indexPath) as! OfferTableViewCell
        return cell
    }
    override func scrollViewDidScroll(scrollView: UIScrollView) {
        
        self.fetchAPI(scrollView)
        
    }
    func fetchAPI(scrollView: UIScrollView){
        
        let offset = scrollView.contentOffset
        let bounds = scrollView.bounds
        let size = scrollView.contentSize
        let inset = scrollView.contentInset
        let y = offset.y + bounds.size.height - inset.bottom
        let h = size.height
        
        let reload_distance = 20
        if(y > h + CGFloat(reload_distance)) {
            
             self.tableView.beginUpdates()
            
            //Append New & Old Array
            let count = list.count - 1
           
            let meh = ["sdfs","sdfsf","sdfsdfs","sdfsdf","sfsdfsf","sdfs","sdfsf","sdfsdfs","sdfsdf","sfsdfsf","sdfs","sdfsf","sdfsdfs","sdfsdf","sfsdfsf"]
             self.list.addObjectsFromArray(meh)
            
            //Create Array of Indexpaths
            var indexpaths : Array<NSIndexPath> = []
            for (index, _) in meh.enumerate() {
                let nspath = NSIndexPath(forRow: count + index, inSection: 0)
                indexpaths.append(nspath)
            }
            
            //Add to Table
            self.tableView.insertRowsAtIndexPaths(indexpaths, withRowAnimation: UITableViewRowAnimation.None)

            self.tableView.endUpdates()

        }
    }

}
