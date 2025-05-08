//
//  MakeBooking.swift
//  PTBookingApp
//
//  Created by Abtahee Ashaf on 9/5/2025.
//

import SwiftUI

struct MakeBookingView: View {
    // Dummy trainers
    let trainers: [Trainer] = [
        Trainer(name: "John", imageName: "person.circle", availability: Date.generateNext30Days()),
        Trainer(name: "Amy", imageName: "person.circle", availability: Date.generateNext30Days()),
        Trainer(name: "Joseph", imageName: "person.circle", availability: Date.generateNext30Days())
    ]
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)

            VStack(spacing: -175) {
                Text("Choose Your Trainer")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top, 190)

                Spacer()

                VStack(spacing: 30) {
                    ForEach(trainers) { trainer in
                        NavigationLink(destination: TrainerAvailabilityView(trainer: trainer)) {
                            HStack {
                                Image(systemName: trainer.imageName)
                                    .font(.title2)
                                Text(trainer.name)
                                    .font(.title2)
                                    .bold()
                            }
                            .padding()
                            .frame(maxWidth: 280)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                            .shadow(color: .blue.opacity(0.6), radius: 4)
                        }
                    }
                }

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    MakeBookingView()
}
