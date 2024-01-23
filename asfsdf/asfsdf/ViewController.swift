//
//  ViewController.swift
//  asfsdf
//
//  Created by Deepesh Vr on 8/26/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func generateMatrix(_ n: Int) -> [[Int]] {
       var outputMatrix = Array(repeating: Array(repeating: 0, count: n), count: n)
       var top = 0
       var bottom = n - 1
       var left = 0
       var right = n - 1
       var number = 1

       while top <= bottom && left <= right {
           for i in left...right {
               outputMatrix[top][i] = number
               number += 1
           }
           top += 1

           for i in top...bottom {
               outputMatrix[i][right] = number
               number += 1
           }
           right -= 1

            if top <= bottom {
                for i in stride(from: right, through: left, by: -1) {
                    outputMatrix[bottom][i] = number
                    number += 1
                }
                bottom -= 1
            }

            if left <= right {
                for i in stride(from: bottom, through: top, by: -1) {
                    outputMatrix[i][left] = number
                    number += 1
                }
                left += 1
            }
       }
       return outputMatrix
     }
}

