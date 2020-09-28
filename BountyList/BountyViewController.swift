//
//  BountyViewController.swift
//  BountyList
//
//  Created by KeunHyeong on 2020/09/28.
//  Copyright © 2020 KeunHyeong. All rights reserved.
//

import UIKit

class BountyViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let viewModel = BountyViewModel()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DetailViewCtr" {
            let vc = segue.destination as? DetailViewController
            if let index = sender as? Int {
                let bountyInfo = viewModel.bountyInfo(at: index)
                vc?.viewModel.update(model: bountyInfo)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "BountyCell", bundle: nil), forCellReuseIdentifier: "BountyCell")

    }
}

extension BountyViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "DetailViewCtr", sender: indexPath.row)
    }
}

extension BountyViewController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numOfBountyInfoList
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "BountyCell", for: indexPath) as? BountyCell else {
            return UITableViewCell()
        }
        let bountyInfo = viewModel.bountyInfo(at: indexPath.row)
        cell.update(info:bountyInfo)
        
        return cell
    }
}



