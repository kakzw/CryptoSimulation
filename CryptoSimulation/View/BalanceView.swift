//
//  BalanceView.swift
//  CryptoSimulation
//
//  Created by Kento Akazawa on 11/27/23.
//

import SwiftUI

struct BalanceView: View {
  var body: some View {
    VStack {
      List(Simulation.shared.players, id: \.name) { player in
        BalanceViewCell(player: player)
      }
    }
    .navigationTitle("Balance")
    .navigationBarBackButtonHidden()
    .navigationBarTitleDisplayMode(.inline)
    .toolbarBackground(.theme, for: .navigationBar)
    .toolbarBackground(.visible, for: .navigationBar)
    // make foreground color of title to white
    .toolbarColorScheme(.dark, for: .navigationBar)
  }
}

struct BalanceViewCell: View {
  var player: Player
  
  var body: some View {
    HStack {
      TextView(text: player.name)
      Spacer()
      Text("\(String(format: "%.2f", player.balance))")
    }
  }
}

#Preview {
  BalanceView()
}
