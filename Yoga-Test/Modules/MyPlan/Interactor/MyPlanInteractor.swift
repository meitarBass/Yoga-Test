//
//  MyPlanInteractor.swift
//  Yoga-Test
//
//  Created by Meitar Basson on 11/02/2021.
//

import Foundation

class MyPlanInteractor: MyPlanInteractorInput {
    
    weak var presenter: MyPlanPresenterInput?
    
    func loadJsonFile() {
        if let fileLocation = Bundle.main.url(forResource: "sessions", withExtension: "json") {
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJSON = try jsonDecoder.decode(Session.self, from: data)
                
                let arrayOfData = dataFromJSON.array
                presenter?.loadJsonSuccess(data: arrayOfData)
              } catch {
                   // handle error
              }
        }
    }
}
