//
//  MyPlanPresenterProtocols.swift
//  Yoga-Test
//
//  Created by Meitar Basson on 11/02/2021.
//

import Foundation

// view to presenter
protocol MyPlanPresenterProtocol: class {
    func viewDidLoad()
//    var collectionManager: MyPlanCollectionViewManagerProtocol? { get set }
}

// interactor to presenter
protocol MyPlanPresenterInput: class {
    func loadJsonSuccess(data: [Array])
    func handleError(error: Error)
}


//manager to presenter
protocol DiscoverCollectionViewManagerDelegate: class {
    
}
