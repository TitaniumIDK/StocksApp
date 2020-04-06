//
//  CostsRepository.swift
//  StocksApp
//
//  Created by Дмитрий Павлов on 06.04.2020.
//  Copyright © 2020 Ilya Khlobystov. All rights reserved.
//

import RxSwift

class CurrencyRepository {
    
    let dataSource = CostsDataSource()
    let mapper = ValuteMapper()
    
    func getCurrency() -> Single<Currency> {
        dataSource.getCosts()
            .map { dto in
                self.mapper.map(from: dto)
        }
        .subscribeOn(ConcurrentDispatchQueueScheduler(qos: .background))
    }
}
