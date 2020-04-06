//
//  GetValuteUseCase.swift
//  StocksApp
//
//  Created by Дмитрий Павлов on 06.04.2020.
//  Copyright © 2020 Ilya Khlobystov. All rights reserved.
//

import RxSwift

class GetCurrencyUseCase {
    
    let repository = CurrencyRepository()
    
    func getCurrency() -> Single<Currency> {
        return repository.getCurrency()
    }
}
