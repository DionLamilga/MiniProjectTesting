//
//  InputKontakViewController.swift
//  MiniProject
//
//  Created by Dion Lamilga on 31/03/22.
//

import UIKit
import RxSwift
import RxCocoa

class InputKontakViewController: UIViewController {

    @IBOutlet weak var fieldName: UITextField!
    @IBOutlet weak var fieldNotelp: UITextField!
    
    let viewModel = InputKontakViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func saveTapped(_ sender: Any) {
        viewModel.insertItem()
        navigationController?.popViewController(animated: true)
        
    }
}
