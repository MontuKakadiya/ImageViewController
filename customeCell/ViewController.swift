//
//  ViewController.swift
//  TableViewController
//
//  Created by iFlame on 22/06/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate,UITableViewDataSource {
   var myarray = ["Cat","Dog","Lion","Mouse","Sweet","Dogs"]

    @IBOutlet weak var mytable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mytable.delegate = self
        mytable.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myarray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: mycell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! mycell
        cell.myimage.image = UIImage(named: self.myarray[indexPath.row])
        cell.mylable.text = self.myarray[indexPath.row]
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

