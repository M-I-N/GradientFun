//
//  ContentView.swift
//  GradientFun
//
//  Created by Mufakkharul Islam Nayem on 11/15/19.
//  Copyright © 2019 Mufakkharul Islam Nayem. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedGradient = GradientView.ViewType.linear
    var body: some View {
        NavigationView {
            ZStack {
                GradientView(gradientType: selectedGradient)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Picker(selection: $selectedGradient, label: Text("Pick Your Gradient")) {
                        ForEach(GradientView.ViewType.allCases) { gradient in
                            Text(gradient.rawValue).tag(gradient)
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                        .padding(.all)
                    Spacer()
                }
            }
            .navigationBarTitle(Text("Home"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
