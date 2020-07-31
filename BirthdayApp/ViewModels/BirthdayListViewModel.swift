//
//  BirthdayListViewModel.swift
//  BirthdayApp
//
//  Created by alex-babich on 31.07.2020.
//  Copyright © 2020 alex-babich. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class BirthdayListViewModel: ObservableObject {
    @Published var birthdays = [BirthdayViewModel]()
    
    func fetchAllBirthdays() {
        self.birthdays = DataManager.shared.getBirthdays().map(BirthdayViewModel.init)
    }
    
    func removeBirthday(at index: Int) {
        let bday = birthdays[index]
        DataManager.shared.removeBirthday(id: bday.id)
    }
}
