const { ethers } = require("hardhat");

async function main() {
  const [deployer] = await ethers.getSigners();

  console.log(
    "Deploying contracts with the account:",
    deployer.address
  );

  const LuciferToken = await ethers.getContractFactory("LuciferToken");
  const luciferToken = await LuciferToken.deploy();

  await luciferToken.waitForDeployment();

  console.log("Lucifer Token deployed to:", luciferToken.target);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});