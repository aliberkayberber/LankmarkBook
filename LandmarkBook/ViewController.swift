//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Ali Berkay BERBER on 15.10.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = "Table View"
        content.secondaryText = "Test"
        cell.contentConfiguration = content
        return cell
    }
}

