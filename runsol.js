const main = async () => {
    contractFactory = hre.ethers.getContractFactory("areaCircle");
    areaContract = await contractFactory.deploy();
    await areaContract.deployed();

    console.log("Contract deployed to: ", areaContract.address);
    let getarea = await areaContract.area(21);
    console.log(getarea);
}

const runMain = async () {
    try {
        await main();
        process.exit(0);
    }catch (error) {
        console.log(error);
        process.exit(1);
    }
}