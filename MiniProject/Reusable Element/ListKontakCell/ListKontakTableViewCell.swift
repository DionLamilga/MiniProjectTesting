//
//  ListKontakTableViewCell.swift
//  MiniProject
//
//  Created by Dion Lamilga on 31/03/22.
//

import UIKit

class ListKontakTableViewCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelNotelp: UILabel!
    
    static let identifier = "ListKontakTableViewCell"
    
    static func nib() ->UINib{
        return UINib(nibName: "ListKontakTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
