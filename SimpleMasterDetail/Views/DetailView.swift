//
//  DetailView.swift
//  SimpleMasterDetail
//
//  Created by Jaden Nation on 2/7/23.
//

import SwiftUI

struct DetailView: View {
    var pizza: Pizza
    var body: some View {
        VStack {
            Rectangle()
                .frame(height: 100)
                .foregroundColor(.blue)
            ZStack {
                Rectangle()
                VStack {
                    HStack {
                        Text(pizza.name)
                            .foregroundColor(.black)
                            .font(.body.bold())
                        Spacer()
                    }
                    Spacer().frame(height: 40)
                    HStack {
                        Text(pizza.description)
                            .foregroundColor(.black)
                        Spacer()
                    }
                    Spacer()
                    
                }
                .padding()
                .frame(alignment: .leading)
                
                
            }
            .frame(alignment: .leading)
        }
        .padding(.all, 0)
        .foregroundColor(.white)
        .navigationTitle(pizza.name)
    }
}

struct DetailView_Previews: PreviewProvider {
    static let pizza = Pizza(hasPepperoni: true, hasSpinach: true, starRating: 5, name: "Best Pizza", description: "The best pizza by far")
    static var previews: some View {
        DetailView(pizza: pizza)
    }
}
