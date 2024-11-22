const assert = require("assert");
const { expect } = require("chai");
var accounts;
var greetings;
/*before(async() => {
    accounts = await hre.ethers.getSigners();
    const Greeting = await ethers.getContractFactory("Greetings");
    greetings = await Greeting.deploy("Hello World");
    await greetings.deployed();
    console.log(greetings.address);
});*/ 
beforeEach(async () => { 
    accounts = await hre.ethers.getSigners();
    const Greeting = await ethers.getContractFactory("Greetings");
    greetings = await Greeting.deploy("Hello World");
    //console.log(greetings.address);
});
describe('Greetings',() => { 
    it('deploys a greetings contract', () => { 
        //assert.ok(greetings.address);
        expect(greetings.address); 
    });
    it('message is set by constructor',async ()=> {
        const message = await  greetings.message(); 
        assert.strictEqual(message, 'Hello World');
        //expect(message).to.equal("Hello World")
    });
    it('message is set by setMeesage() ',async () => {
        const setGreetingTx = await greetings.setMessage("Hello Mars"); 
        await setGreetingTx.wait();   
        const message = await greetings.message(); 
        assert.strictEqual (message,'Hello Mars');
        //expect(message).to.equal("Hello Mars");
    });

});
