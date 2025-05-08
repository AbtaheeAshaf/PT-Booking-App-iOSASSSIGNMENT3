//
//  TrainerModel.swift
//  PTBookingApp
//
//  Created by Abtahee Ashaf on 9/5/2025.
//
import Foundation

struct Trainer: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let availability: [Date]
}
