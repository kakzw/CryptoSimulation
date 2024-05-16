//
//  ContentView.swift
//  CryptoSimulation
//
//  Created by Kento Akazawa on 11/10/23.
//

import SwiftUI

struct ContentView: View {
  @State private var selectedTab: Tab = .result
  
  var body: some View {
    NavigationStack {
      switch selectedTab {
        case .result:
          ResultView()
        case .variables:
          VariableView()
        case .amount:
          BalanceView()
      }
      
      TabBarView(selectedTab: $selectedTab)
    }
  }
}

struct TextView: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .opacity(0.8)
  }
}

#Preview {
  ContentView()
}
