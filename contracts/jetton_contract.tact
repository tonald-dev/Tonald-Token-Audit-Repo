import "@stdlib/deploy";
import "./jetton.tact";


contract JettonContract with Deployable,Jetton {
    total_supply: Int as coins; // Tracks total supply of Jettons
    owner: Address;             // Address of the contract owner
    content: Cell;              // Metadata/content associated with the Jetton
    mintable: Bool;             // Flag to indicate if minting is allowed

    max_supply: Int as coins;   // Maximum supply of Jettons (not part of Jetton Standards)

    // @owner The address of the Jetton contract owner
    // @content The initial metadata content of the Jetton
    // @max_supply The maximum supply of Jettons that can be minted                     
    init(owner: Address, content: Cell, max_supply: Int) {
        self.total_supply = 0;
        self.owner = owner;
        self.mintable = true;
        self.content = content;
        self.max_supply = max_supply;
        self.mint(self.owner, max_supply, self.owner);
        self.mintable = false;
    }

}
