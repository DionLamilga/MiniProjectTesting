//
//  ListKontakViewController.swift
//  MiniProject
//
//  Created by Dion Lamilga on 31/03/22.
//

import UIKit
import RxSwift
import RxCocoa

class ListKontakViewController: UIViewController {

    let viewModel = ListKontakViewModel()
    let disposeBag = DisposeBag()
    
    @IBOutlet weak var tableList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableList.register(ListKontakTableViewCell.nib(), forCellReuseIdentifier: ListKontakTableViewCell.identifier)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "ADD", style: .plain, target: self, action: #selector(addTapped))
        
        configureTable()
        cellTapped()
    }
    
    
    func configureTable(){
        viewModel.itemList.bind(to: tableList.rx.items(cellIdentifier: ListKontakTableViewCell.identifier, cellType: ListKontakTableViewCell.self)){ row, item, cell in
            
            cell.labelName.text = item.name
            cell.labelNotelp.text = item.noHp
        }.disposed(by: disposeBag)
        
        viewModel.fetchItem()
    }
    
    func cellTapped(){
        tableList.rx.modelSelected(DataModel.self).subscribe(onNext: {selectItem in
            let showMovie = UIStoryboard(name: "DetailKontak", bundle: nil)
            let vc = showMovie.instantiateViewController(withIdentifier: "kontak") as! DetailKontakViewController
            vc.viewModel.itemList = self.viewModel.itemList
            vc.name = selectItem.name
            vc.noTelp = selectItem.noHp
            self.navigationController?.pushViewController(vc, animated: true)
            
        }).disposed(by: disposeBag)
    }
    
//    func removeItem(at indexPath: IndexPath){
//        guard var sections = try? viewModel.itemList.value else {return}
//        var currentSection = sections[indexPath.row]
//
//        currentSection.name.remove(at: indexPath.row)
//    }
    
    
    @objc func addTapped(){
        let showMovie = UIStoryboard(name: "InputKontak", bundle: nil)
        let vc = showMovie.instantiateViewController(withIdentifier: "input") as! InputKontakViewController
        vc.viewModel.itemList = viewModel.itemList
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
