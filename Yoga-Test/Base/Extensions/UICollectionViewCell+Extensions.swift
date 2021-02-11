//
//  UITableViewCell+Extensions.swift
//  Yoga-Test
//
//  Created by Meitar Basson on 11/02/2021.
//

import UIKit

extension UICollectionViewCell {
    public static var reuseIdentifier: String {
        String(describing: self)
    }
}
