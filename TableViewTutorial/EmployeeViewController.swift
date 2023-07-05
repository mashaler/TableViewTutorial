//
//  EmployeeViewController.swift
//  TableViewTutorial
//
//  Created by DA MAC  M1 154 on 2023/07/05.
//

import UIKit

class EmployeeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableview: UITableView!
    
    var employees = [["Phenyo", "Malele", "Phenyo@gmail.com"], ["Brad", "Davids","Brad@gmail.com"],["Ethel", "Malele", "ethel@gmail.com"],["Treasure","Malele","treasure@gmail.com"]]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return employees.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? EmployeeTableViewCell
        else {return UITableViewCell()}
        
        cell.lblName.text = employees[indexPath.row][0]
        cell.lblSurname.text  = employees[indexPath.row][1]
        cell.lblEmail.text = employees[indexPath.row][2]
        
        print(employees[indexPath.row][2])
        
        return cell
    }

}
