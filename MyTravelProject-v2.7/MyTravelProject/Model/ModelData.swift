//
//  ModelData.swift
//  MyTravelProject
//
//  Created by Mounir SISSANI on 19/09/2021.
//

import Foundation
import Combine


final class ModelData: ObservableObject {
    @Published var results: [ResultTrip] = [
        ResultTrip(image: "Italie", destination: "Italie", criteria1: "Budget", value1: "200 €", criteria2: "destination", value2: "Venise", criteria3: "Durée", value3: "1 mois", matching: 100.0, isFavorite: false, date: "", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse est leo, vehicula eu eleifend non, auctor ut arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse est leo, vehicula eu eleifend non, auctor ut arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse est leo, vehicula eu eleifend non, auctor ut arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse est leo, vehicula eu eleifend non, auctor ut arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse est leo, vehicula eu eleifend non, auctor ut arcu", phoneNumber:"0799999999", linkBooking:"https://www.apple.com"),
        
        ResultTrip(image: "Hamburg", destination: "Allemagne", criteria1: "Budget", value1: "400 $", criteria2: "destination", value2: "Hamburg", criteria3: "Durée", value3: "1 semaine", matching: 92.0, isFavorite: false, date: " ", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse est leo, vehicula eu eleifend non, auctor ut arcu. Lorem ipsum", phoneNumber:"08222209099", linkBooking:"https://www.apple.com"),
        
        ResultTrip(image: "NewYork", destination: "Etats-Unis", criteria1: "Budget", value1: "600 $", criteria2: "Destination", value2: "NewYork", criteria3: "Durée", value3: "5 jours", matching: 86.0, isFavorite: false, date:"", description: "Lorem ipsum dolor sit ame, auctor ut arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse est leo, vehicula eu eleifend non, auctor ut arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse est leo, vehicula eu eleifend non, auctor ut arcu",phoneNumber:"0333243233", linkBooking:"https://www.apple.com"),
        
        ResultTrip(image: "mountains", destination: "Norvege", criteria1: "Budget", value1: "350 £", criteria2: "Destination", value2: "oda", criteria3: "Durée", value3: "3 jours", matching: 79.0, isFavorite: false, date: "", description: "Suspendisse est leo, vehicula eu eleifend non, auctor ut arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse est leo, vehicula eu eleifend non, auctor ut arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse est leo, vehicula eu eleifend non, auctor ut arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse est leo, vehicula eu eleifend non, auctor ut arcu", phoneNumber:"0898909099", linkBooking:"https://www.apple.com")
    ]

}
