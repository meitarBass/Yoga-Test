//
//  BaseViewController.swift
//  Yoga-Test
//
//  Created by Meitar Basson on 11/02/2021.
//

import UIKit
import SnapKit

class BaseViewController: UIViewController {
        
    //MARK: - lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
    }
    
    func setupUI() {
        self.addSubviews()
        self.makeConstraints()
    }
    
    
    func addSubviews() {

    }
    
    func makeConstraints() {

    }
}

