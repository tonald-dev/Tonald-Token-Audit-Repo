# TONALD Token Smart Contracts
This repository contains smart contracts for implementing a Jetton token, a customizable token on a blockchain platform. It includes contracts for managing the Jetton supply, minting new tokens, handling transfers between wallets, and enforcing ownership rights. 

## Overview

The repository includes the following key components:

- **`jetton_contract`**: The main contract for the Jetton token, which manages minting, total supply, and enforces the maximum supply limit.
- **`jetton_wallet`**: A wallet contract for individual token holders, managing balance, transfer operations, and interactions with the main contract.
- **`jetton`**: A trait defining the Jetton standard functionalities, including supply management, token burning, and content updates.

## Project structure

-   `contracts` - source code of all the smart contracts of the project and their dependencies.
-   `wrappers` - wrapper classes (implementing `Contract` from ton-core) for the contracts, including any [de]serialization primitives and compilation 
functions.

### Repository Structure

- `jetton_contract.tact` - Main contract for managing Jetton supply, minting permissions, and owner-specific controls.
- `jetton_wallet.tact` - Wallet contract for users holding Jetton tokens, with support for transfers and balance management.
- `jetton.tact` - Trait providing core Jetton functionalities, including ownership, supply adjustments, and mint/burn operations.

## How to use

To get started with these contracts, you'll need to set up a Tact environment. Follow these steps:

1. Clone the repository:
   ```bash
   https://github.com/tonald-dev/Tonald-Token-Audit-Repo.git
   cd your-repo-name

2. Install the dependencies:
     ```bash
     npm i
     

### Build

`npx blueprint build` or `yarn blueprint build`

