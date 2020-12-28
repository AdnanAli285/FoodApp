//
//  HomeInteractor.swift
//  FoodApp
//
//  Created by Admin on 19/12/2020.
//  Copyright © 2020 Adnan Ali. All rights reserved.
//

import Foundation
import RxSwift
import ObjectMapper

protocol HomeInteractorProtocol{
    func loadBanners()
    func loadList()
    func getItem(at index: Int) -> Product?
    func getCount() -> Int
    func addDidTapped()
    func cartDidTapped()
}

class HomeInteractor: HomeInteractorProtocol{
    var banners : [Banner] = []
    private let productService: ProductServiceProtocol
    var disposeBag = DisposeBag()
    
    
    init(service: ProductServiceProtocol) {
        self.productService = service
    }
    
    
    func loadBanners() {
        productService.fetchBanners()
        .subscribeOn(MainScheduler.instance)
        .subscribe(onNext: { [weak self] response in
            let json = try! JSONSerialization.jsonObject(with: response.data, options: [])
            self?.banners = Mapper<Banner>().mapArray(JSONObject: json) ?? []

        }, onError: { error in
            
        })
        .disposed(by: disposeBag)
        
    }
    
    func loadList() {
        
    }
    
    func getItem(at index: Int) -> Product? {
        return nil
    }
    
    func getCount() -> Int {
        return 0
    }
    
    func addDidTapped() {
        
    }
    
    func cartDidTapped() {
        
    }
    
    
    
}
