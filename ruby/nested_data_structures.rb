nfl = {
	:nfc => {
		:north => [
			'Green Bay',
			'Minnesota',
			'Detroit',
			'Chicago'
			],
		:south => [
			'Carolina',
			'Atlanta',
			'Tampa Bay',
			'New Orleans'
			], 
		:east => [
			'New York',
			'Philadelphia',
			'Dallas',
			'Washington'
			],
		:west => [
			'Arizona',
			'Seattle',
			'Los Angeles',
			'San Francisco'
			]
	},
	:afc => {
		north: [
			'Pittsburgh',
			'Baltimore',
			'Cincinnati',
			'Cleveland'
			],
		south: [
			'Tennessee',
			'Houston',
			'Jacksonville'
			], 
		east: [
			'New England',
			'New York Jets',
			'Miami',
			'Buffalo'
			],
		west: [
			'Denver',
			'San Diego',
			'Oakland',
			'Kansas City'
			]
	}
}

nfl[:afc][:south].push('Indianapolis')

p nfl[:afc][:south]

p nfl[:afc][:north][2,3]

nfl[:nfc][:east][0] = "New York Giants"

p nfl