//
//  BountyCell.swift
//  BountyList
//
//  Created by KeunHyeong on 2020/09/28.
//  Copyright © 2020 KeunHyeong. All rights reserved.
//

import UIKit

class BountyCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var titleLb: UILabel!
    @IBOutlet weak var subTitleLb: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(info:BountyInfo){
        imgView.image = info.image
        titleLb.text = info.name
        subTitleLb.text = "\(info.bounty)"
    }
    
}
