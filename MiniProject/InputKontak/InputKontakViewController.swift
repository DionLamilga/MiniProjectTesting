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
    @IBOutlet weak var btnSave: UIButton!
    
    let viewModel = InputKontakViewModel()
    let disposeBag = DisposeBag()
    
    var fieldNameStatus: Bool?
    var fieldNotelpStatus: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        validationInput()
        
    }

    @IBAction func saveTapped(_ sender: Any) {
        
        viewModel.insertItem(name: fieldName.text ?? "", no: fieldNotelp.text ?? "")
        navigationController?.popViewController(animated: true)
        
    }
    
    func validationInput(){
        fieldName.rx.text.orEmpty
            .map{(text: String) -> Bool in
                return text.isEmpty
            }
            .subscribe(onNext: { isEmpty in
                if isEmpty{
                    self.fieldNameStatus = false
                } else {
                    self.fieldNameStatus = true
                }
                self.validationButton()
            }).disposed(by: disposeBag)
        
        
        fieldNotelp.rx.text.orEmpty
            .map{(text: String) -> Bool in
                return text.isEmpty
            }
            .subscribe(onNext: { isEmpty in
                if isEmpty{
                    self.fieldNotelpStatus = false
                } else {
                    self.fieldNotelpStatus = true
                }
                self.validationButton()
            }).disposed(by: disposeBag)
    }
    
    func validationButton(){
        if fieldNameStatus == true && fieldNotelpStatus == true{
            btnSave.isEnabled = true
        } else {
            btnSave.isEnabled = false
        }
    }
}
