//
//  DetailViewModel.swift
//  BountyList
//
//  Created by KeunHyeong on 2020/09/28.
//  Copyright © 2020 KeunHyeong. All rights reserved.
//

import UIKit

class DetailViewModel {
    
    var bountyInfo: BountyInfo?
    
    func update(model: BountyInfo?){
        bountyInfo = model
    }
}
