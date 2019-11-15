//
//  GradientView.swift
//  GradientView
//
//  Created by Mufakkharul Islam Nayem on 11/15/19.
//  Copyright © 2019 Mufakkharul Islam Nayem. All rights reserved.
//

import SwiftUI

struct GradientView: View {
    enum ViewType: String, Identifiable, CaseIterable {
        var id: Self {
            return self
        }
        case linear = "Linear"
        case radial = "Radial"
    }
    let gradientType: ViewType
    var body: some View {
        Group {
            if gradientType == .linear {
                LinearGradientView()
            } else if gradientType == .radial {
                RadialGradientView()
            }
        }
    }
}

struct LinearGradientView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
            Text("Linear Gradient")
                .font(.title)
                .fontWeight(.medium)
        }
    }
}

struct RadialGradientView: View {
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.pink, .purple]), center: .center, startRadius: 0, endRadius: 600)
            Text("Radial Gradient")
                .font(.title)
                .fontWeight(.medium)
        }
    }
}
