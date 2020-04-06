//
//  NewsApiDataSource.swift
//  StocksApp
//
//  Created by Дмитрий Павлов on 05.04.2020.
//  Copyright © 2020 Ilya Khlobystov. All rights reserved.
//

import RxSwift

class CostsDataSource {
    
    let url = URL(string: "https://www.cbr-xml-daily.ru/daily_json.js")
    
    func getCosts() -> Single<CostsDto> {
        Single<CostsDto>.create { single in
            guard let downloadURL = self.url else {
                return Disposables.create {
                    single(.error(RxError.unknown))
                }
            }
            let dataTask = URLSession.shared.dataTask(with: downloadURL) { data, urlResponse, error in
                guard let data = data, error == nil, urlResponse != nil
                    else { return }
                do {
                    single(.success(try JSONDecoder().decode(CostsDto.self, from: data)))
                    
                } catch {
                    print("smf wrong after downloaded")
                }
            }
            dataTask.resume()
            return Disposables.create {
                dataTask.cancel()
            }
        }
    }
}
