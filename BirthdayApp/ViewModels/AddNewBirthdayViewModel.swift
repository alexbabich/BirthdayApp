//
//  AddNewBirthdayViewModel.swift
//  BirthdayApp
//
//  Created by alex-babich on 31.07.2020.
//  Copyright © 2020 alex-babich. All rights reserved.
//

import SwiftUI

class AddNewBirthdayViewModel {
    
    var titleText: String = "Add New Birthday!"
    
    func saveBirthday(birthday: BirthdayViewModel) {
        DataManager.shared.saveBirthday(id: birthday.id, name: birthday.name, date: birthday.date)
    }
}
