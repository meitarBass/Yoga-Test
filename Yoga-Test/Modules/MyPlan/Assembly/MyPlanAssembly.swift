//
//  MyPlanAssembly.swift
//  Yoga-Test
//
//  Created by Meitar Basson on 11/02/2021.
//

import UIKit

class MyPlanAssembly {
    static func assemble() -> UIViewController {
        
        let view = MyPlanViewController()
        let collectionManager = MyPlanCollectionManager()
        let preseneter = MyPlanPresenter()
        let interactor = MyPlanInteractor()
//        let router = FavouritesRouter()
//        let profileManager: ProfileService? = ServiceLocator.shared.getService()
        
        view.presenter = preseneter
        
        collectionManager.delegate = preseneter
//        searchBarManager.delegate = preseneter
        
        preseneter.view = view
        preseneter.interactor = interactor
        preseneter.collectionManager = collectionManager
        
        interactor.presenter = preseneter
        
        return view
    }
    
}
