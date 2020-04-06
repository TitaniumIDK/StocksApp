//
//  Costs.swift
//  StocksApp
//
//  Created by Дмитрий Павлов on 06.04.2020.
//  Copyright © 2020 Ilya Khlobystov. All rights reserved.
//

struct Currency {
    let ID: String
    let Name: String
    let Value: Double
    let Previous: Double
    
    static func empty() -> Currency {
        return Currency(ID: "", Name: "", Value: 0, Previous: 0)
    }
}
