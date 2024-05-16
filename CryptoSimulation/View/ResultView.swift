//
//  ResultView.swift
//  CryptoSimulation
//
//  Created by Kento Akazawa on 11/26/23.
//

import SwiftUI

struct ResultView: View {
  var body: some View {
    VStack {
      List(Simulation.shared.results, id: \.self) { result in
        ResultCell(result: result)
      }
    }
    .navigationTitle("Transactions")
    .navigationBarBackButtonHidden()
    .navigationBarTitleDisplayMode(.inline)
    .toolbarBackground(.theme, for: .navigationBar)
    .toolbarBackground(.visible, for: .navigationBar)
    // make foreground color of title to white
    .toolbarColorScheme(.dark, for: .navigationBar)
  }
}

struct ResultCell: View {
  var result: Result
  
  var body: some View {
    VStack {
      HStack {
        TextView(text: "Sender")
        Spacer()
        Text(result.sender)
      }
      
      HStack {
        TextView(text: "Receiver")
        Spacer()
        Text(result.receiver)
      }
      
      HStack {
        TextView(text: "Amount")
        Spacer()
        Text(result.amount)
      }
      
      HStack {
        TextView(text: "e")
        Spacer()
        Text(result.e)
      }
      
      HStack {
        TextView(text: "n")
        Spacer()
        Text(result.n)
      }
      
      HStack {
        TextView(text: "Verified")
        Spacer()
        Text(result.verified.description)
      }
    }
  }
}

#Preview {
  ResultView()
}
