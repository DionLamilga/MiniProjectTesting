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
    
    var itemList = BehaviorRelay<[DataModel]>(value: dataItems)
    let disposeBag = DisposeBag()
    
    func fetchItem(){
        
        itemList.asObservable().subscribe(onNext: {value in
        }).disposed(by: disposeBag)
        
        itemList.accept(dataItems)
        //itemList.onCompleted()
    }
    
}
