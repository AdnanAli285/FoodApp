//
//  HomePresenter.swift
//  FoodApp
//
//  Created by Admin on 19/12/2020.
//  Copyright © 2020 Adnan Ali. All rights reserved.
//

import Foundation

protocol HomePresenterProtocol: class {
    func getItem(at index: Int) -> Product?
    func getCount() -> Int
    func addDidTapped()
    func cartDidTapped()
}

class HomePresenter: HomePresenterProtocol{
    //MARK:- Private Properties

    private let interactor : HomeInteractorProtocol
    private let router: HomeRouterProtocol
    
    //MARK:- Public Properties
    
    weak var homeViewDelegate: HomeViewDelegate?
    
    //MARK:- Init
    init(interactor: HomeInteractorProtocol, router: HomeRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
    
    //MARK:- Public Methods
    
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
