//
//  ProductService.swift
//  FoodApp
//
//  Created by Admin on 20/12/2020.
//  Copyright © 2020 Adnan Ali. All rights reserved.
//

import Foundation
import Moya
import RxSwift

protocol ProductServiceProtocol {
    func fetchBanners() -> Observable<Response>
    func fetchProducts() -> Observable<Response>
}

final class ProductService: ProductServiceProtocol {
    
    private let provider = MoyaProvider<FoodApi>()
    
    func fetchBanners() -> Observable<Response>{
        return provider.rx.request(.banners).asObservable()
    }
    
    func fetchProducts() -> Observable<Response> {
        return provider.rx.request(.products).asObservable()
    }
    
}
