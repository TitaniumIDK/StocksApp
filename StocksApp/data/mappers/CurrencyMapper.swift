//
//  ValuteMapper.swift
//  StocksApp
//
//  Created by Дмитрий Павлов on 06.04.2020.
//  Copyright © 2020 Ilya Khlobystov. All rights reserved.
//

class ValuteMapper {
    
    func map(from dto: CostsDto) -> Currency {
        let usd = dto.Valute.USD
        let id = mapString(from: usd.ID)
        let name = mapString(from: usd.Name)
        let value = mapDouble(from: usd.Value)
        let prev = mapDouble(from: usd.Previous)
        
        return Currency(ID: id, Name: name, Value: value, Previous: prev)
    }
    
    private func mapString(from optional: String?) -> String {
        guard let string = optional else {
            return ""
        }
        return string
    }
    
    private func mapDouble(from optional: Double?) -> Double {
        guard let double = optional else {
            return 0
        }
        return double
    }
}
