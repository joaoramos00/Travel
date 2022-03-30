//
//  HomeTableViewHeader.swift
//  travel
//
//  Created by João Luis Ferreira Ramos Junior on 29/03/22.
//

import UIKit

class HomeTableViewHeader: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var bannerImageView: UIImageView!
    @IBOutlet weak var bannerView: UIView!
    
    func configureView() {
        headerView.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1)
        bannerView.layer.cornerRadius =  10
        bannerView.layer.masksToBounds = true
        
        headerView.layer.cornerRadius = 500
        headerView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
      
    }
}
