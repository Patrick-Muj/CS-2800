//
//  ViewController.swift
//  WSUAssociateSwift
//
//  Created by Erik Buck on 9/16/19.
//  Copyright © 2019 WSU. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet var deptTable : UITableView?
    var departOrder = Array<Department>()
    var employeeOrder = Array<NSObject>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        departOrder = (UIApplication.shared.delegate as! AppDelegate).departments.sorted(by: {$0.name < $1.name })
        
        employeeOrder = (UIApplication.shared.delegate as! AppDelegate).employees.sorted(by:
            {
                let lastName0 = $0.value(forKey:"lastName") as! String
                let lastName1 = $1.value(forKey:"lastName") as! String
                let firstName0 = $0.value(forKey:"firstName") as! String
                let firstName1 = $1.value(forKey:"firstName") as! String
                return lastName0 + firstName0 < lastName1 + firstName1
        })
        
        if (tableView.tag == 1) {
            return departOrder.count
        }
        else {
            return employeeOrder.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCell", for: indexPath)
        
        if (tableView.tag == 1) {
            let departmentName = departOrder[index].value(forKey:"name") as! String
            
            // Configure the cell’s contents.
            cell.textLabel!.text = departmentName
        }
        else {
            let lastName = employeeOrder[index].value(forKey:"lastName") as! String
            let firstName = employeeOrder[index].value(forKey:"firstName") as! String
            let fullName = (lastName + " " + firstName)
            
             // Configure the cell’s contents.
            cell.textLabel!.text = fullName
        }
        
        return cell
        
    }
}

