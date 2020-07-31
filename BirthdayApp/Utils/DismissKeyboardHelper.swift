//
//  DismissKeyboardHelper.swift
//  BirthdayApp
//
//  Created by alex-babich on 31.07.2020.
//  Copyright © 2020 alex-babich. All rights reserved.
//

import UIKit

class DismissKeyboardHelper {
    static func dismiss() {
        let keyWindow = UIApplication.shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .map({$0 as? UIWindowScene})
            .compactMap({$0})
            .first?.windows
            .filter({$0.isKeyWindow}).first
        keyWindow!.endEditing(true)
    }
}
