# 🚀 ERC-20 Token with Foundry

This project demonstrates how to build and test an **ERC-20 Token** using the [Foundry](https://book.getfoundry.sh/) smart contract development framework. It also includes deployment scripts and test cases.


yaml
Copy
Edit

---

## 🔧 Setup Instructions

### 🛠 Prerequisites

- [Foundry](https://book.getfoundry.sh/getting-started/installation)
- Git
- Node.js (optional, for frontend integration)

### 📥 Install Dependencies

```bash
git clone https://github.com/your-username/ERC20-Foundry.git
cd ERC20-Foundry
forge install
✍️ Writing Your Token
You can modify Token.sol to create your own ERC-20 token:

solidity
Copy
Edit
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract OurToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("OurToken", "OTK") {
        _mint(msg.sender, initialSupply);
    }
}
🚀 Deploying the Contract
Deploy to Sepolia (or your desired network):
bash
Copy
Edit
forge script script/DeployOurToken.s.sol:DeployOurToken --rpc-url $SEPOLIA_RPC_URL --broadcast --verify -vvvv
Add .env for private keys and RPC:

bash
Copy
Edit
PRIVATE_KEY=your_private_key
SEPOLIA_RPC_URL=https://rpc.sepolia.org
ETHERSCAN_API_KEY=your_etherscan_key
🧪 Running Tests
bash
Copy
Edit
forge test -vv
✅ GitHub Actions (CI)
CI runs on every push to main using .github/workflows/test.yml. It automatically runs your Forge tests.

📌 License
This project is licensed under the MIT License.

🤝 Author
Built by Atharva Joshi 🚀
Feel free to reach out if you have any questions or want to collaborate!

yaml
Copy
Edit

---

You can copy this `README.md` file directly into your repo, commit, and push:

```bash
git add README.md
git commit -m "Add complete README for ERC-20 Token project"
git push origin main