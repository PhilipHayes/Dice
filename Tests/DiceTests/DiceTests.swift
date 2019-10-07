import XCTest
@testable import Dice

final class DiceTests: XCTestCase {
	func testRollDice() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
		
		let dSixes = [6,6,6,6,6,6,6,6].map {Dice(sides: $0)}
			.map{$0.roll()}
		print(dSixes)
		
		let dTwenties = [20,20,20,20,20,20,20].map {Dice(sides: $0)}
			.map{$0.roll()}
		print(dTwenties)
		
		let mixedDie =  [20, 8,8,4, 20, 8, 8, 4].map {Dice(sides: $0)}
			.map{($0.sides, $0.roll())}
		print(mixedDie)
		
	}

    static var allTests = [
        ("testRollDice", testRollDice),
    ]
}
