//
//  ViewController.swift
//  ConsecutiveAlertController
//
//  Created by beomcheol on 08/22/2019.
//  Copyright (c) 2019 beomcheol. All rights reserved.
//

import UIKit
import ConsecutiveAlertController

class ViewController: UIViewController {

    deinit {
        print(#function)
    }

    @IBAction func action(_ sender: Any) {
        let alert = UIAlertController(title: "Hello", message: "World!!!!!!!!!!!!!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel) { action in
            print("Alert1111")
        })
        alert.presentConsecutively(on: self, animated: true)

        let alert2 = UIAlertController(title: "Hello", message: "World2!!!!!!!!!!!!!", preferredStyle: .alert)
        alert2.addAction(UIAlertAction(title: "OK", style: .cancel) { action in
            print("Alert2222")
        })
        alert2.presentConsecutively(on: self, animated: true)

        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            let alert3 = UIAlertController(title: "Hello", message: "World3!!!!!!!!!!!!!", preferredStyle: .alert)
            alert3.addAction(UIAlertAction(title: "OK", style: .cancel) { _ in
                print("Alert3333")
            })
            alert3.presentConsecutively(on: self, animated: true)
        }
    }

}

