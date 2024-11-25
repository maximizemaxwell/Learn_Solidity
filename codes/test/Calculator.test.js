const Calculator = artifacts.require("Calculator");

contract("Calculator", accounts => {
  it("should add correctly", async () => {
    const calculator = await Calculator.deployed();
    await calculator.add(20);
    const result = await calculator.get();
    assert.equal(result.toString(), "20", "Addition did not work correctly");
  });

  it("should subtract correctly", async () => {
    const calculator = await Calculator.deployed();
    await calculator.subtract(10);
    const result = await calculator.get();
    assert.equal(result.toString(), "10", "Subtraction did not work correctly");
  });

  it("should multiply correctly", async () => {
    const calculator = await Calculator.deployed();
    await calculator.multiply(2);
    const result = await calculator.get();
    assert.equal(result.toString(), "20", "Multiplication did not work correctly");
  });
});
