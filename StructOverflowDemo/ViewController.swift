//
//  ViewController.swift
//  StructOverflowDemo
//
//  Created by Allen Hsu on 2019/5/21.
//  Copyright © 2019 Glow, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private struct Curve {
        var points = [CGPoint]()
    }
    
//// Solution 1
//    private class Curve {
//        var points = [CGPoint]()
//    }
    
    private var curve: Curve?

    override func viewDidLoad() {
        super.viewDidLoad()
        step1()
        step2()
    }

    func step1() {
        curve = Curve()
        curve?.points = [CGPoint(x: 0, y: 0), CGPoint(x: 1, y: 1)]
        
//// Solution 2
//        var curve = Curve()
//        curve.points = [CGPoint(x: 0, y: 0), CGPoint(x: 1, y: 1)]
//        self.curve = curve
    }
    
    func step2() {
        if let curve = curve {
            print("total points in dashpoints: \(curve.points.count)")
            print("points: \(curve.points)")
        }
    }
}

