 //
//  MovieCell.swift
//  Flix
//
//  Created by chinenye ogbuchiekwe on 4/14/19.
//  Copyright © 2019 chinenye ogbuchiekwe. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
