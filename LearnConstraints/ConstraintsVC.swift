//
//  ViewController.swift
//  LearnConstraints
//
//  Created by ViktorsMacbook on 28.02.19.
//  Copyright © 2019 Viktor Bednyi Inc. All rights reserved.
//

import UIKit
import TinyConstraints

class ConstraintsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstView = UIView()
        firstView.add(to: view).then {
            $0.backgroundColor = .red
            $0.height(150)
            $0.top(to: view, view.safeAreaLayoutGuide.topAnchor)
            $0.left(to: view, offset: 30)
            $0.right(to: view, offset: -30)
            
        }
        
        let secondView = UIView()
        secondView.add(to: view).then {
            $0.backgroundColor = .yellow
            $0.height(to: firstView, offset: 70)
            $0.topToBottom(of: firstView, offset: 30)
            $0.left(to: view, offset: 30)
            $0.right(to: view, offset: -30)
        }
        
        let thirdView = UIView()
        thirdView.add(to: view).then {
            $0.backgroundColor = .green
            $0.height(to: firstView, offset: 130)
            $0.topToBottom(of: secondView, offset: 30)
            $0.left(to: view, offset: 30)
            $0.right(to: view, offset: -30)
            $0.bottom(to: view, view.safeAreaLayoutGuide.bottomAnchor)
        }
    }
}

