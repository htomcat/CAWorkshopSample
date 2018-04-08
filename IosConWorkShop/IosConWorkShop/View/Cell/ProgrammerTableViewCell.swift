//
//  ProgrammerTableViewCell.swift
//  IosConWorkShop
//
//  Created by 浜田　智史 on 2018/03/23.
//  Copyright © 2018年 htomcat. All rights reserved.
//

import UIKit

class ProgrammerTableViewCell: UITableViewCell {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension ProgrammerTableViewCell: ProgrammerCellView {
    func display(name: String) {
        label1.text = name
    }
    
    func display(date: String) {
        label2.text = date
    }
    
    func display(favourite: Bool) {
        label3.isHidden = favourite
        label3.backgroundColor = favourite ? .yellow : .white
    }
    
    
}
