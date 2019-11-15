//
//  ContentView.swift
//  GradientFun
//
//  Created by Mufakkharul Islam Nayem on 11/15/19.
//  Copyright © 2019 Mufakkharul Islam Nayem. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private let gradients = GradientView.ViewType.allCases
    @State private var selectedSegment = 0
    var body: some View {
        NavigationView {
            ZStack {
                GradientView(gradientType: gradients[selectedSegment])
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Picker(selection: $selectedSegment, label: Text("Pick Your Gradient")) {
                        ForEach(0 ..< gradients.count) {
                            Text(self.gradients[$0].rawValue).tag($0)
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                        .padding(.all)
                    Spacer()
                }
            }
            .navigationBarTitle(Text("Home"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
