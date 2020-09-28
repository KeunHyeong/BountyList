//
//  DetailViewController.swift
//  BountyList
//
//  Created by KeunHyeong on 2020/09/28.
//  Copyright © 2020 KeunHyeong. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

   
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var titleLb: UILabel!
    @IBOutlet weak var subTitleLb: UILabel!

    let viewModel = DetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func closeAction(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    func updateUI() {
        
        if let bountyInfo = viewModel.bountyInfo {
            imgView.image = bountyInfo.image
            titleLb.text = bountyInfo.name
            subTitleLb.text = "\(bountyInfo.bounty)"
        }
    }
}


