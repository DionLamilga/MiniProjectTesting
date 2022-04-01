//
//  InputKontakViewModel.swift
//  MiniProject
//
//  Created by Dion Lamilga on 31/03/22.
//

import Foundation
import RxSwift
import RxCocoa

class InputKontakViewModel{
    
   var itemList = BehaviorSubject<[DataModel]>(value: dataItems)
    let disposeBag = DisposeBag()
    
    func insertItem(name: String, no: String){
        
        itemList.asObservable().subscribe(onNext: {value in
            print(value)
        })
        itemList.onNext(dataItems + [DataModel(name: name, noHp: no)])
        //itemList.onNext([DataModel(name: name, noHp: no)])
        //itemList.onCompleted()
    }
}
