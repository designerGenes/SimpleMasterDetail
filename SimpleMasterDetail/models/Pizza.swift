//
//  Pizza.swift
//  SimpleMasterDetail
//
//  Created by Jaden Nation on 2/9/23.
//

import Foundation

struct Pizza: Identifiable {
    var id = UUID()
    var hasPepperoni: Bool
    var hasSpinach: Bool
    var starRating: Int
    var name: String
    var description: String
}
