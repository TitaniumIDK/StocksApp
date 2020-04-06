//
//  NewsDto.swift
//  StocksApp
//
//  Created by Дмитрий Павлов on 05.04.2020.
//  Copyright © 2020 Ilya Khlobystov. All rights reserved.
//

struct CostsDto: Decodable {
    let Date: String?
    let PreviousDate: String?
    let PreviousURL: String?
    let Timestamp: String?
    let Valute: ValutesDto
}

struct ValutesDto: Decodable {
    let AUD: ValuteDto
    let AZN: ValuteDto
    let GBP: ValuteDto
    let AMD: ValuteDto
    let BYN: ValuteDto
    let BGN: ValuteDto
    let BRL: ValuteDto
    let HUF: ValuteDto
    let HKD: ValuteDto
    let DKK: ValuteDto
    let USD: ValuteDto
    let EUR: ValuteDto
    let INR: ValuteDto
    let KZT: ValuteDto
    let CAD: ValuteDto
    let KGS: ValuteDto
    let CNY: ValuteDto
    let MDL: ValuteDto
    let NOK: ValuteDto
    let PLN: ValuteDto
    let RON: ValuteDto
    let XDR: ValuteDto
    let SGD: ValuteDto
    let TJS: ValuteDto
    let TRY: ValuteDto
    let TMT: ValuteDto
    let UZS: ValuteDto
    let UAH: ValuteDto
    let CZK: ValuteDto
    let SEK: ValuteDto
    let CHF: ValuteDto
    let ZAR: ValuteDto
    let KRW: ValuteDto
    let JPY: ValuteDto
}

struct ValuteDto: Decodable {
    let ID: String?
    let NumCode: String?
    let CharCode: String?
    let Nominal: Int?
    let Name: String?
    let Value: Double?
    let Previous: Double?
}

