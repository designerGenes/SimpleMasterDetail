//
//  ContentView.swift
//  SimpleMasterDetail
//
//  Created by Jaden Nation on 2/7/23.
//

import SwiftUI

let dummyData = [
    Pizza(hasPepperoni: true, hasSpinach: true, starRating: 4, name: "Pepperoni Pizza", description: "A pizza with pepperoni and spinach"),
    Pizza(hasPepperoni: false, hasSpinach: true, starRating: 5, name: "Spinach Pizza", description: "A pizza with only spinach"),
    Pizza(hasPepperoni: false, hasSpinach: false, starRating: 1, name: "Dough Pizza", description: "A pizza with neither pepperoni nor spinach. Just bland dough however you cut it."),
    Pizza(hasPepperoni: true, hasSpinach: false, starRating: 1, name: "Pepperoozel Pizza", description: "A pizza with pepperoni and a zesty twist."),
    Pizza(hasPepperoni: false, hasSpinach: false, starRating: 1, name: "Cheese Pizza", description: "A pizza with nothing but cheese."),
    Pizza(hasPepperoni: false, hasSpinach: false, starRating: 1, name: "Canadian Bacon Pizza", description: "A pizza with bacon from Canada."),
    Pizza(hasPepperoni: true, hasSpinach: true, starRating: 1, name: "Everything Pizza", description: "A pizza for the man who has it all."),
]

struct HomeView: View {
    let data: [Pizza] = dummyData
    var body: some View {
        NavigationStack {
            HStack {
                VStack {
                    VStack {
                        Rectangle()
                            .frame(height: 80)
                            .foregroundColor(.blue)
                        List(data) { data in
                            NavigationLink(destination: DetailView(pizza: data)) {
                                HStack {
                                    Text(data.name)
                                    Spacer()
                                    Text(String(data.starRating))
                                }
                                .padding()
                            }
                        }
                        .cornerRadius(8)
                    }
                    .frame(alignment: .center)
                    
                    Spacer()
                    
                }
                .frame(alignment: .center)
            }
            .frame(alignment: .center)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
