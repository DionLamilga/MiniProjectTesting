//
//  DetailKontakViewController.swift
//  MiniProject
//
//  Created by Dion Lamilga on 31/03/22.
//

import UIKit

class DetailKontakViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelNotelp: UILabel!
    
    var name: String?
    var noTelp: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelName.text = name
        labelNotelp.text = noTelp
        // Do any additional setup after loading the view.
    }

}
