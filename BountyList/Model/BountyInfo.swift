//
//  BountyInfo.swift
//  BountyList
//
//  Created by KeunHyeong on 2020/09/28.
//  Copyright © 2020 KeunHyeong. All rights reserved.
//

import UIKit

struct BountyInfo {
    
    let name: String
    let bounty: Int
    
    var image: UIImage?{
        return UIImage(named: "\(name).jpg")
    }
    
    init(name: String, bounty: Int) {
        self.name = name
        self.bounty = bounty
    }
    

}
