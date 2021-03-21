//
//  HomeViewController.swift
//  FoodApp
//
//  Created by Admin on 19/12/2020.
//  Copyright © 2020 Adnan Ali. All rights reserved.
//

import UIKit
import MXScroll

protocol HomeViewDelegate: class{
    func showError()
    func showData()
}

class HomeViewController: UIViewController, HomeViewDelegate {

    //MARK:- Private Properties
    private let presenter: HomePresenter
    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    //MARK: - Init
    
    init?(coder: NSCoder, presenter: HomePresenter) {
        self.presenter = presenter
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("call init with View Model")
    }
    
    //MARK:- Public Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    func setupViews(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 300
    }
    
    func showError() {
        
    }
    
    func showData() {
        
    }
    

}

extension HomeViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "productViewCell", for: indexPath) as? ProductViewCell{
            return cell
        }
        return UITableViewCell()
        
    }
}

extension HomeViewController : MXViewControllerViewSource{
    func headerViewForMixObserveContentOffsetChange() -> UIView? {
        return
    }
    func viewForMixToObserveContentOffsetChange() -> UIView {
        return scrollView
    }
}




