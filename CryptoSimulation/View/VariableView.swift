//
//  VariableView.swift
//  CryptoSimulation
//
//  Created by Kento Akazawa on 11/27/23.
//

import SwiftUI

struct VariableView: View {
  var body: some View {
    VStack {
      HStack {
        Spacer()
        TextView(text: "e")
        Spacer()
        Divider()
        Spacer()
        TextView(text: "n")
        Spacer()
      }
      .frame(height: 20)
      List(Simulation.shared.players, id: \.name) { player in
        VariableViewCell(player: player)
      }
    }
    .navigationTitle("Variables")
    .navigationBarBackButtonHidden()
    .navigationBarTitleDisplayMode(.inline)
    .toolbarBackground(.theme, for: .navigationBar)
    .toolbarBackground(.visible, for: .navigationBar)
    // make foreground color of title to white
    .toolbarColorScheme(.dark, for: .navigationBar)
  }
}

struct VariableViewCell: View {
  var player: Player
  
  var body: some View {
    VStack {
      HStack {
        TextView(text: player.name)
          .underline()
        Spacer()
      }
      
      HStack {
        Spacer()
        Text("\(player.e)")
        Spacer()
        Divider()
        Spacer()
        Text("\(player.n)")
        Spacer()
      }
    }
  }
}

#Preview {
  VariableView()
}
