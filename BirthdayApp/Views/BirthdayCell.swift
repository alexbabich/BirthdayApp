//
//  BirthdayCell.swift
//  BirthdayApp
//
//  Created by alex-babich on 31.07.2020.
//  Copyright © 2020 alex-babich. All rights reserved.
//

import SwiftUI

struct BirthdayCell: View {
    var birthdayVM: BirthdayViewModel
    @State private var updatePresented = false
    
    var body: some View {
        HStack {
            VStack {
                Text(birthdayVM.monthString)
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 60, height: 20)
                    .background(Rectangle().fill(Color.red))
                
                Text(birthdayVM.dayString)
                    .bold()
                    .frame(height: 40)
            }
            .foregroundColor(.black)
            .background(RoundedRectangle(cornerRadius: 5).fill(Color.white))
            .shadow(radius: 5)
            
            Text(birthdayVM.name)
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .padding(.leading, 20)
            
            Spacer()
            
            VStack {
                Text("Turning")
                    .font(.caption)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Text("\(birthdayVM.turningYear)")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .shadow(radius: 4)
                
                if birthdayVM.remainingDays == 0 {
                    Text("🥳 Today 🎉")
                        .font(.caption)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding([.horizontal], 10)
                        .padding([.vertical], 5)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                } else {
                    Text("In \(birthdayVM.remainingDays) days")
                        .font(.caption)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding([.horizontal], 10)
                        .padding([.vertical], 5)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
        }
        .padding()
        .background(Color.black.opacity(0.1))
        .cornerRadius(10)
        .shadow(radius: 10)
    }
}
