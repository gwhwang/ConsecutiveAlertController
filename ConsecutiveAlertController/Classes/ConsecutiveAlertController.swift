//
//  ConsecutiveAlertController.swift
//  AlertSample
//
//  Created by Masher Shin on 21/08/2019.
//  Copyright © 2019 Masher Shin. All rights reserved.
//

import UIKit

class ConsecutiveAlertController: UIAlertController {

    convenience init(alertController ac: UIAlertController) {
        self.init(title: ac.title, message: ac.message, preferredStyle: ac.preferredStyle)
        for action in ac.actions {
            addAction(action.copy() as! UIAlertAction)
        }
    }

    private let manager = ConsecutiveAlertManager.shared

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        manager.cueNext()
    }

}

// MARK: - UIAlertController extension
extension UIAlertController {

    open func presentConsecutively(on: UIViewController, animated: Bool, completion: (() -> Void)? = nil) {
        let alertController = ConsecutiveAlertController(alertController: self)
        ConsecutiveAlertManager.shared.onStandby(alert: alertController) {
            on.present(alertController, animated: animated, completion: completion)
        }
        ConsecutiveAlertManager.shared.cueStandby()
    }

}
