//
//  MyPlanCollectionManager.swift
//  Yoga-Test
//
//  Created by Meitar Basson on 11/02/2021.
//

import UIKit

//presenter to manager
protocol MyPlanCollectionViewManagerProtocol {
    func setUpCollectionView(collectionView: UICollectionView)
    func setupSessions(session: [Array])
}

class MyPlanCollectionManager: NSObject {
    
    weak var delegate: MyPlanCollectionViewManagerDelegate?
    weak var collectionView: UICollectionView?
    
    private var session: [Array]?
}

extension MyPlanCollectionManager: MyPlanCollectionViewManagerProtocol {
    func setupSessions(session: [Array]) {
        self.session = session
        self.collectionView?.reloadData()
    }
    
    func setUpCollectionView(collectionView: UICollectionView) {
        self.collectionView = collectionView
        self.collectionView?.delegate = self
        self.collectionView?.dataSource = self
        self.collectionView?.register(MyPlanCollectionViewCell.self, forCellWithReuseIdentifier: MyPlanCollectionViewCell.reuseIdentifier)
    }
}

extension MyPlanCollectionManager: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return session?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("Got")
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyPlanCollectionViewCell.reuseIdentifier, for: indexPath) as? MyPlanCollectionViewCell else {
            return UICollectionViewCell()
        }
        let cellViewModel = SessionCellViewModel.init(session: session?[indexPath.row])
        cell.viewModel = cellViewModel
        return cell
    }
}

extension MyPlanCollectionManager: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 250, height: 300)
    }
}

