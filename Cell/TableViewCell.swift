//
//  TableViewCell.swift
//  TableviewWithTag
//
//  Created by KULDEP KUMAR PRAJAPATI on 05/08/20.
//  Copyright © 2020 KULDEP KUMAR PRAJAPATI. All rights reserved.
//

import UIKit
//MARK for tag find which button clicked
//protocol CellDeligate: class {
//    func cellButtonTapped(tag: Int)
//}


class TableViewCell: UITableViewCell {

    @IBOutlet weak var cellButton: UIButton!
    
    
    //MARK for tag find which button clicked
//    weak var delegate: CellDeligate?
    
    //MARK using tapBlock which button clicked below method
//    var tapBlock: (()-> Void)? = nil
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func btnCellTapped(_ sender: UIButton) {
//        //MARK using tapBlock which button clicked below method
////        tapBlock?()
//
//
//
//        //MARK for tag find which button clicked
////        delegate?.cellButtonTapped(tag: sender.tag)
//
    }
    
    

}


