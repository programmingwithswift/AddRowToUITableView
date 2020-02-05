//
//  ViewController.swift
//  AddRowToTableView
//
//  Created by ProgrammingWithSwift on 2020/02/05.
//  Copyright © 2020 ProgrammingWithSwift. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var data = ["mars", "earth", "jupiter", "venus", "saturn"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = self.data[indexPath.row]
        
        return cell
    }

    @IBAction func addMercury(_ sender: UIButton) {
        ////////////////////////////////////////
        // Step 1
        ////////////////////////////////////////
        
//        self.data.append("mercury")
//        self.tableView.reloadData()

        
        ////////////////////////////////////////
        // Step 2
        ////////////////////////////////////////
        
        // Inserting a row at the end
        
//        self.data.append("mercury")
//        self.tableView.performBatchUpdates({
//            self.tableView.insertRows(at: [IndexPath(row: self.data.count - 1,
//                                                     section: 0)],
//                                      with: .automatic)
//        }, completion: nil)
        
        
        // Inserting a row anywhere in the UITableView
        
//        self.data.insert("mercury", at: 2)
//
//        self.tableView.performBatchUpdates({
//            self.tableView.insertRows(at: [IndexPath(row: 2,
//                                                     section: 0)],
//                                      with: .automatic)
//        }, completion: nil)
    }
}

