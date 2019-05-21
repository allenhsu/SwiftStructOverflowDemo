//
//  ViewController.swift
//  StructOverflowDemo
//
//  Created by Allen Hsu on 2019/5/21.
//  Copyright © 2019 Glow, Inc. All rights reserved.
//

import UIKit

class CustomView: UIView {
    private struct Curve {
        var points = [CGPoint]()
    }
    
//// Solution 1
//    private class Curve {
//        var points = [CGPoint]()
//    }

    private var curve: Curve?
    
    func update() {
        curve = Curve()
        curve?.points = [CGPoint(x: 0, y: 0), CGPoint(x: 1, y: 1)]
        
//// Solution 2
//        var curve = Curve()
//        curve.points = [CGPoint(x: 0, y: 0), CGPoint(x: 1, y: 1)]
//        self.curve = curve
        
        setNeedsDisplay()
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        if let curve = curve {
            print("total points in dashpoints: \(curve.points.count)")
        }
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let view = CustomView()
        view.frame = self.view.bounds
        self.view.addSubview(view)
        view.update()
    }
}

