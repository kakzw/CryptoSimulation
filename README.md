# Crypto Simulation App

This SwiftUI application simulates a crypto transaction system with encryption and decryption functionalities
The application involves simulating players engaging in transactions using encryption and decryption techniques. Players are initialized with cryptographic keys, and transactions involve sending encrypted messages between players.

## Screenshots

## Model
- **Player**
  - Represents a participant in the simulation.
  - Contains cryptographic properties (`p`, `q`, `d`, `phiN`, `n`, `e`) for encryption and decryption.
  - Manages balance and name of the player.
  - Provides functions for encoding, decoding, encrypting, and validating transactions.
- **Extended Euclidean**
  - Calculates cryptographic parameters (`p`, `q`, `d`, `phiN`, `n`, `e`) using the Extended Euclidean algorithm.
  - Generates prime numbers for cryptographic operations.
- **Variable Generator**
  - Generates random prime numbers required for cryptographic operations.
- **Simulation**
  - Manages the simulation of transactions among players.
  - Generates random transactions with amounts, sender, and receiver.
  - Validates and executes transactions by encrypting and decrypting messages.
  - Updates player balances based on transaction outcomes.

## View
- **Result View**
  - Displays transaction results including sender, receiver, amount, encryption parameters (`e`, `n`), and verification status.
- **Variable View**
  - Displays cryptographic variables (`e`, `n`) for each player.
- **Balance View**
  - Displays player balances.
 
## Installation
- To run this app, make sure you have `XCode` installed.
- Clone this repository.
- Open `CryptoSimulation.xcodeproj` in `XCode`.
- Build and run the app on your iOS device or simulator.
