//
//  TrainerAvailabilityView.swift
//  PTBookingApp
//
//  Created by Abtahee Ashaf on 9/5/2025.
//

import SwiftUI

struct TrainerAvailabilityView: View {
    let trainer: Trainer

    var body: some View {
        VStack {
            Text("\(trainer.name)'s Availability")
                .font(.title2)
                .bold()
                .padding()
                .foregroundColor(.white)

            List(trainer.availability, id: \.self) { date in
                Text(date, format: .dateTime.month().day().year())
            }
            .listStyle(.plain)
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}
