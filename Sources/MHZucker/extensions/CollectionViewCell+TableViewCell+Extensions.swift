//
//  CollectionViewCell+TableViewCell+Extensions.swift
//
//  Created by Mohamed Emad Abdalla Hegab on 14.02.18.
//

import UIKit

extension UICollectionViewCell {
    static var reuseId: String {
        return String(describing: self)
    }
}

extension UITableViewCell {
    static var reuseId: String {
        return String(describing: self)
    }
}

extension UITableViewHeaderFooterView {
    static var reuseId: String {
        return String(describing: self)
    }
}

extension UICollectionView {

    func register(cell: UICollectionViewCell.Type) {
        register(UINib(nibName: String(describing: cell), bundle: nil), forCellWithReuseIdentifier: cell.reuseId)
    }

    func register(cells: [UICollectionViewCell.Type]) {
        for cell in cells {
            register(UINib(nibName: String(describing: cell), bundle: nil), forCellWithReuseIdentifier: cell.reuseId)
        }
    }
}

extension UITableView {

    func register(cell: UITableViewCell.Type) {
        register(UINib(nibName: String(describing: cell), bundle: nil), forCellReuseIdentifier: cell.reuseId)
    }

    func register(cells: [Any.Type]) {
        for cell in cells {
            if let cell = cell as? UITableViewCell.Type {
                register(UINib(nibName: String(describing: cell), bundle: nil), forCellReuseIdentifier: cell.reuseId)
            } else if let cell = cell as? UITableViewHeaderFooterView.Type {
                register(UINib(nibName: String(describing: cell), bundle: nil), forHeaderFooterViewReuseIdentifier: cell.reuseId)
            }
        }
    }

    func register(view: UITableViewHeaderFooterView.Type) {
        register(UINib(nibName: String(describing: view), bundle: nil), forHeaderFooterViewReuseIdentifier: view.reuseId)
    }
}
