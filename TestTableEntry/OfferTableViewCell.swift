//
//  OfferTableViewCell.swift
//  Edinburgh Mums
//
//  Created by Shaun Gillon on 21/06/2015.
//  Copyright (c) 2015 Odd Panda Design Ltd. All rights reserved.
//

import UIKit

class OfferTableViewCell: UITableViewCell {

    @IBOutlet weak var errorSmallText: UILabel!
    @IBOutlet weak var errorImage: UIImageView!
    @IBOutlet weak var offerValidFrom: UILabel!
    
   // @IBOutlet weak var offerEnding: triangle!
    @IBOutlet weak var categoryImage: UIImageView!
    
    @IBOutlet weak var beQuick: UILabel!
    @IBOutlet weak var offerImage: UIImageView!
    
    @IBOutlet weak var offerDescription: UILabel!
    
    @IBOutlet weak var businessName: UILabel!
    
    @IBOutlet weak var businessAddress: UILabel!
    
    @IBOutlet weak var category: UILabel!
    
    @IBOutlet weak var distance: UILabel!
    @IBOutlet weak var textContainer: UIView!
    
    @IBOutlet weak var noResultsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
