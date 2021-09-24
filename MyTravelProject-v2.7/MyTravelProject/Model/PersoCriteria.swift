//
//  PersoCriteria.swift
//  MyTravelProject
//
//  Created by Mounir SISSANI on 21/09/2021.
//

import Foundation

enum Monnaie: String, CaseIterable {
    case EUR = "€", USD = "US $", GBP = "£", AUD = "AUS $"
    case CFA = "F CFA"
    }

struct PersoCriteria: Hashable {
    var budgetMin: Float
    var budgetMax: Float
    var currency: Monnaie
    var country: String
}

var persoChosen = PersoCriteria(budgetMin: 0, budgetMax: 0 ,currency: .EUR, country: "")

