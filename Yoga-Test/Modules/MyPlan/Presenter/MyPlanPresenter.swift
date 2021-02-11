//
//  MyPlan.swift
//  Yoga-Test
//
//  Created by Meitar Basson on 11/02/2021.
//

import Foundation

class MyPlanPresenter {
    weak var view: MyPlanViewInput?
    var interactor: MyPlanInteractorInput?
    var collectionManager: MyPlanCollectionViewManagerProtocol?
}

extension MyPlanPresenter: MyPlanPresenterProtocol {
    func viewDidLoad() {
        interactor?.loadJsonFile()
    }
}

extension MyPlanPresenter: MyPlanPresenterInput {
    func loadJsonSuccess(data: [Array]) {
        collectionManager?.setupSessions(session: data)
    }
    
    func handleError(error: Error) {
        
    }
}

extension MyPlanPresenter: MyPlanCollectionViewManagerDelegate {
    
}


