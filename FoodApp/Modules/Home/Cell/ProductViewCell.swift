//
//  ProductViewCell.swift
//  FoodApp
//
//  Created by Admin on 26/12/2020.
//  Copyright © 2020 Adnan Ali. All rights reserved.
//

import UIKit

class ProductViewCell: UITableViewCell {
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var addToCartBtn: UIButton!
    @IBAction func addToCartBtnTapped(_ sender: Any) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addToCartBtn.layer.cornerRadius = 22.0
        containerView.layer.cornerRadius = 20.0
        containerView.layer.masksToBounds = true

        layer.backgroundColor = UIColor.clear.cgColor
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 1.0)
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 4.0
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
