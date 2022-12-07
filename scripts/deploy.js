async function main() {
    const SafetyTracker = await ethers.getContractFactory("SafetyTracker");
 
    // Start deployment, returning a promise that resolves to a contract object
    const safety_tracker = await SafetyTracker.deploy("Safety Tracker!");
    console.log("Contract deployed to address:", safety_tracker.address);
 }
 
 main()
   .then(() => process.exit(0))
   .catch(error => {
     console.error(error);
     process.exit(1);
   });