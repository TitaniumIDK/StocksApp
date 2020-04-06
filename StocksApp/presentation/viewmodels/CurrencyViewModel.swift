//
//  CurrencyViewModel.swift
//  StocksApp
//
//  Created by Дмитрий Павлов on 05.04.2020.
//  Copyright © 2020 Ilya Khlobystov. All rights reserved.
//

import RxSwift

class CurrencyViewModel {
    
    private let disposeBag = DisposeBag()
    
    let useCase = GetCurrencyUseCase()
    
    private let currencySubject = BehaviorSubject<Currency>(value: Currency.empty())
    var currencyObservable: Observable<Currency> {
        return currencySubject.asObservable()
    }
    
    func loadData() {
        useCase.getCurrency()
            .observeOn(MainScheduler.instance)
            .subscribe(onSuccess: { currency in
                self.currencySubject.on(.next(currency))
            })
            .disposed(by: disposeBag)
    }
}
