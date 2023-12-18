//
//  ViewController.swift
//  TableViewT
//
//  Created by Sami Ahmed on 18/12/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    //MARK: - Variables
    var drivers: [Driver] = []
    
    //MARK: - IBOutlet
    @IBOutlet weak var TableView: UITableView!
    
    //MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        drivers = [
                   Driver(photo: "Image 1", name: "سامي أحمد", number: "0109411832", location: "دمياط الجديدة"),
                   Driver(photo: "Image 2", name: "عبد العظيم صالح", number: "01010102044", location: "المنصورة"),
                   Driver(photo: "Image 1", name: "أحمد عثمان", number: "01010102044", location: "دمياط الجديدة"),
                   Driver(photo: "Image", name: "عبد العظيم صالح", number: "01010102044", location: "المنصورة"),
               ]
        
        TableView.dataSource = self
        TableView.delegate = self
        TableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drivers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:TableViewCell.identifier, for: indexPath) as! TableViewCell
        let driver = drivers[indexPath.row]
               cell.configure(with: driver)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 180
       }
    
    
}

