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
    
    func insertItem(){

        dataItems.insert(DataModel(name: "Bambang", noHp: "029832323232"), at: 3)

        itemList.onNext(dataItems)
        itemList.onCompleted()
    }
}
