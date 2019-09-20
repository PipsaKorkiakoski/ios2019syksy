//
//  ShoppingListTableViewController.swift
//  lab3t1
//
//  Created by Pipsa Korkiakoski on 10/09/2019.
//  Copyright © 2019 Pipsa Korkiakoski. All rights reserved.
//

import UIKit

class ShoppingListTableViewController: UITableViewController {

    @IBAction func additembtn(_ sender: Any) {
        showTodoText()
    }
    var shoppinglist = ["Esimerkki", "Esimerkki2" ]
    
    func showTodoText() {
        var textInput: UITextField? = nil
        let alert = UIAlertController(title: "Add new", message: "Please enter text for the item", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: {_ in
            print("OK Button pressed: " + textInput!.text!)
            self.shoppinglist.append(textInput!.text!)
            self.tableView.reloadData()
            print(self.shoppinglist)
        }))
        alert.addTextField(configurationHandler: {
            (textField: UITextField!) in
            textField.placeholder = "Todo Item"
            textInput = textField
            
        })
        self.present(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self,  forCellReuseIdentifier: "UITableViewCell")        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return shoppinglist.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        cell.textLabel?.text = self.shoppinglist[indexPath.row]
        
        return cell
    }
    
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            shoppinglist.remove(at: indexPath.row)
            self.tableView.reloadData()
            //tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
