//
//  ProjectModel.swift
//  MyTravelProject
//
//  Created by olivierruiz on 20/09/2021.
//

import Foundation

enum Keyword: String, Identifiable {
    case budget = "Cadrage"
    case date = "Maquillage"
    case destination = "Destination"
    var id: String {self.rawValue}
}


