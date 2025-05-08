//
//  DashboardView.swift
//  PTBookingApp
//
//  Created by Abtahee Ashaf on 30/4/2025.
//
import SwiftUI

struct DashboardView: View {
    let greetings = ["Welcome back!", "Hello there!", "Good to see you!", "Ready to get fit?", "Let’s crush your goals!"]
    @State private var greeting = ""

    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)

                VStack(spacing: 40) {
                    Text(greeting)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .bold()
                        .padding(.top, 50)

                    Spacer()

                    VStack(spacing: 30) {
                        DashboardButtonLink(title: "My Profile", systemIcon: "person.circle", destination: Text("My Profile Screen"))
                        DashboardButtonLink(title: "Make Booking", systemIcon: "calendar.badge.plus", destination: MakeBookingView())
                        DashboardButtonLink(title: "My Bookings", systemIcon: "list.bullet.rectangle", destination: Text("My Bookings Screen"))
                    }

                    Spacer()
                }
            }
            .onAppear {
                greeting = greetings.randomElement() ?? "Welcome!"
            }
        }
    }
}

struct DashboardButtonLink<Destination: View>: View {
    let title: String
    let systemIcon: String
    let destination: Destination

    var body: some View {
        NavigationLink(destination: destination) {
            HStack {
                Image(systemName: systemIcon)
                    .font(.title2)
                Text(title)
                    .font(.title2)
                    .bold()
            }
            .padding()
            .frame(maxWidth: 280)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(12)
            .shadow(color: .blue.opacity(0.6), radius: 5, x: 0, y: 2)
        }
    }
}

#Preview {
    DashboardView()
}

