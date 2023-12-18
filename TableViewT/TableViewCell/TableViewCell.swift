//
//  TableViewCell.swift
//  TableViewT
//
//  Created by Sami Ahmed on 18/12/2023.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    //MARK: - IBOutlet
    @IBOutlet var driverPhoto: UIImageView!
    @IBOutlet var driverName: UILabel!
    @IBOutlet var driverNumber: UILabel!
    @IBOutlet var driverLocation: UILabel!
    @IBOutlet var acceptButton: UIButton!
    @IBOutlet var rejectButton: UIButton!
    
    static let identifier = "TableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "TableViewCell", bundle: nil)
    }
    
    //MARK: - ViewLifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        driverPhoto.layer.borderWidth = 2
        driverPhoto.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    //MARK: - IBActions
    @IBAction func acceptButton(_ sender: Any) {
    }
    @IBAction func rejectButton(_ sender: Any) {
    }
    
    
    //MARK: - Functions
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(with driver: Driver) {
           driverPhoto.image = UIImage(named: driver.photo)
           driverName.text = driver.name
           driverNumber.text = driver.number
           driverLocation.text = driver.location
       }
    
}
