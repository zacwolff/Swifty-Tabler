//
//  MainTableViewController.swift
//  Swifty Tabler
//
//  Created by Zac Wolff on 4/21/15.
//  Copyright (c) 2015 GH4HUB Ghana Limited. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    var TableArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        TableArray = ["DASHBOARD","PROFILE","TRANSFERS", "PAY BILLS", "BUY AIRTIME", "FOREX RATES", "OTHER BANKING SERVICES", "NOTIFICATIONS & ALERTS", "SETTINGS", "HELP & SUPPORT", "CONTACT US", "LOGOUT"]
        
        //self.tableView.backgroundView = UIImageView(image: UIImage(named: "2"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableArray.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        // Configure the cell...
        var cell = tableView.dequeueReusableCellWithIdentifier(TableArray[indexPath.row], forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = TableArray[indexPath.row]
        
        cell.backgroundColor = UIColor.clearColor()
        cell.textLabel?.textColor = UIColor(red:0.33, green:0.33, blue:0.33, alpha:1)
        return cell
    }

    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        if (indexPath.row == 11)
        {
            println("This thingy is the logout button. Do something else here.")
            var myAlertView = UIAlertView()
            
            myAlertView.title = "Logout"
            myAlertView.message = "Are you sure you want to logout of ADB Mobile?"
            myAlertView.addButtonWithTitle("Dismiss")
            myAlertView.addButtonWithTitle("Logout")
            myAlertView.show()
        }
        /*
        Selected cell/row background colour
        */
        var selectedCell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        selectedCell.contentView.backgroundColor = UIColor(red:0, green:0.71, blue:0.43, alpha:1)

        var selectedTextColour:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        selectedTextColour.textLabel?.highlightedTextColor = UIColor.whiteColor()
        
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
