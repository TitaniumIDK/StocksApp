//
//  ViewController.swift
//  StocksApp
//
//  Created by Ilya Khlobystov on 23.03.2020.
//  Copyright © 2020 Ilya Khlobystov. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    private let disposeBag = DisposeBag()
    
    let viewModel = CurrencyViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let disposable = viewModel.currencyObservable
            .subscribe(onNext: { valute in
                self.label.text = String(format: "%f", valute.Value)
            })
        disposable.disposed(by: disposeBag)
        viewModel.loadData()
    }
}

