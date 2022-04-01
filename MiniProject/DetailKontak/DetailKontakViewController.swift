//
//  DetailKontakViewController.swift
//  MiniProject
//
//  Created by Dion Lamilga on 31/03/22.
//

import UIKit

class DetailKontakViewController: UIViewController {
    
    
    @IBOutlet weak var fieldName: UITextField!
    @IBOutlet weak var fieldNoTelp: UITextField!
    
    var name: String?
    var noTelp: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fieldName.text = name
        fieldNoTelp.text = noTelp
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "DELETE", style: .plain, target: self, action: #selector(deleteTapped))
        navigationItem.rightBarButtonItem?.tintColor = .red
        // Do any additional setup after loading the view.
    }

    @IBAction func editTapped(_ sender: Any) {
    }
    
    @objc func deleteTapped(){
        
    }
}
