//
//  ViewController.swift
//  RetrieveIndexPath
//
//  Created by Desarrollo on 5/20/19.
//  Copyright © 2019 Dev Core. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myCell: [String] = ["One","Two", "Three"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCell.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as? MyCell else {
            return UITableViewCell()
        }
        
        cell.buttonAction = { sender in
            print("My index: \(indexPath.row)")
        }
        cell.clickMe.setTitle(String(indexPath.row), for: .normal)
        return cell
    }
}
