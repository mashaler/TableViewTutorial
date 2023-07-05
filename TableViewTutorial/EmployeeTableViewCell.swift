//
//  EmployeeTableViewCell.swift
//  TableViewTutorial
//
//  Created by DA MAC  M1 154 on 2023/07/05.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblSurname: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
