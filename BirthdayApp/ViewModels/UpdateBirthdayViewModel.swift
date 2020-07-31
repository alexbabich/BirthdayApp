//
//  UpdateBirthdayViewModel.swift
//  BirthdayApp
//
//  Created by alex-babich on 31.07.2020.
//  Copyright © 2020 alex-babich. All rights reserved.
//

import SwiftUI

class UpdateBirthdayViewModel {
    func updateBirthday(birthday: BirthdayViewModel) {
        DataManager.shared.updateBirthday(id: birthday.id, name: birthday.name, date: birthday.date)
    }
}
