//
//  DetailKontakViewModel.swift
//  MiniProject
//
//  Created by Dion Lamilga on 01/04/22.
//

import Foundation
import RxCocoa
import RxSwift

class DetailKontakViewModel{
    var itemList = BehaviorRelay<[DataModel]>(value: dataItems)
    let disposeBag = DisposeBag()
    
    func updateitem(name: String, no: String){
        itemList.asObservable().subscribe(onNext: {value in
            print(value)
        }).disposed(by: disposeBag)
        itemList.accept(dataItems + [DataModel(name: name, noHp: no)])
    }
}
