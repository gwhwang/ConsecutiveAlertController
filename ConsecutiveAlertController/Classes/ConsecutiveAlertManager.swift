//
//  ConsecutiveAlertManager.swift
//  AlertSample
//
//  Created by Masher Shin on 21/08/2019.
//  Copyright © 2019 Masher Shin. All rights reserved.
//

import UIKit

class ConsecutiveAlertManager {

    typealias Standby = (alert: UIAlertController, action: () -> Void)

    static let shared = ConsecutiveAlertManager()

    private var standby: [Standby] = []

    private var current: Standby?

    func onStandby(alert: UIAlertController, with action: @escaping () -> Void) {
        standby.append((alert, action))
    }

    func cueStandby() {
        if let current = current {
            standby.insert(current, at: standby.count - 1)
            current.alert.dismiss(animated: true)
        } else {
            actionStandby()
        }
    }

    func cueNext() {
        current = nil
        cueStandby()
    }

    private func actionStandby() {
        guard let sb = standby.popLast() else { return }
        sb.action()
        current = sb
    }

}
