import GameplayKit

public struct Dice {
	static let randomizer:GKRandom = GKARC4RandomSource()
	var sides:Int = 6
	
	
	public init(sides:Int) {
		self.sides = sides
	}
	public init() {
		
	}
	public func roll() -> Int {
		Dice.randomizer.nextInt(upperBound: sides) + 1
	}
	
}
