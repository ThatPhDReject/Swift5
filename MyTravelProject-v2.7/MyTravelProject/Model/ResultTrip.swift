//
//  ResultTrip.swift
//  MyTravelProject
//
//  Created by Mounir SISSANI on 19/09/2021.
/*
Abstract:
A representation of a single result search trip.
*/

import Foundation
import SwiftUI
import CoreLocation

struct ResultTrip: Hashable, Codable, Identifiable {
    var id = UUID()
    var image: String
    var destination: String
    var criteria1: String
    var value1: String
    var criteria2: String
    var value2: String
    var criteria3: String
    var value3: String
    var matching: Double
    var isFavorite: Bool
    var date: String
    var description: String
    var phoneNumber: String
    var linkBooking: String
}
