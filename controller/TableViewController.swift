//
//  ViewController.swift
//  TableviewWithTag
//
//  Created by KULDEP KUMAR PRAJAPATI on 05/08/20.
//  Copyright © 2020 KULDEP KUMAR PRAJAPATI. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableViewe: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewe.dataSource = self
    }


}

extension TableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        //MARK using tapBlock which button clicked below method
//        cell.tapBlock = {
//            print(indexPath.row)
//        }
        
        //MARK for tag find which button clicked below method
//        cell.delegate=self
        cell.cellButton.tag = indexPath.row
        cell.cellButton.addTarget(self, action: #selector(cellBtnTapped(sender:)), for: .touchUpInside)
        cell.cellButton.setTitle("\(indexPath.row)", for: .normal)
        return cell
    }
    
    
    @objc
    func cellBtnTapped(sender: UIButton) {
        print(sender.tag)
    }
    
}


//MARK for tag find which button clicked
//extension TableViewController: CellDeligate{
//    func cellButtonTapped(tag: Int) {
//        print(tag)
//    }
//}




