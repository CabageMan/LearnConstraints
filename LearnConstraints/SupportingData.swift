//
//  SupportingData.swift
//  LearnConstraints
//
//  Created by ViktorsMacbook on 28.02.19.
//  Copyright © 2019 Viktor Bednyi Inc. All rights reserved.
//

import UIKit

extension UIView {
    func add(to view: UIView) -> Self {
        view.addSubview(self)
        return self
    }
}

// MARK: Implementation of ThenCompatability functionality
// We create protocol "ThenCompatability"
protocol ThenCompatability { }
// Then we define an extansion of this protocol with function "then"
// That function get the another function as param and perform this fuction in itself body with itself as param
extension ThenCompatability {
    func then(_ f: (Self)->()) {
        f(self)
    }
}
// And then we define an extension of NSObject
extension NSObject: ThenCompatability { }
