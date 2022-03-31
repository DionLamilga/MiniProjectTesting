//
//  ListKontakViewModel.swift
//  MiniProject
//
//  Created by Dion Lamilga on 31/03/22.
//

import Foundation
import RxSwift
import RxCocoa

class ListKontakViewModel{
    
    var itemList = PublishSubject<[DataModel]>()
    
    func fetchItem(){

        itemList.onNext(dataItems)
        itemList.onCompleted()
    }
}
