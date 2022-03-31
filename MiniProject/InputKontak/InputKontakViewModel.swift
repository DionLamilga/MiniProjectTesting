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
    
    var itemList = PublishSubject<[DataModel]>()
    
    func insertItem(name: String, no: String){

        dataItems.append(DataModel(name: name, noHp: no))

        itemList.onNext(dataItems)
        itemList.onCompleted()
    }
}
