#!/usr/bin/env groovy
/**
* Simple sample builder for the climbing guidebook wiki
* Licensed under the GNU Public License (http://www.gnu.org/copyleft/gpl.html)
**/


import groovy.json.JsonBuilder
import groovy.json.JsonOutput

def json = new JsonBuilder()

json.state
{
	area "The Black Ladders"
	routes
	{
		name "Hidden Gully"
		grades {
			scottish 2
		}
		stars 1
		length 60
		description "An excellent route of great character, involving little more than easy angled snow slopes leading to an obvious gully on the right hand side of the crag."
		firstAscentClimber "Bobby Climbsalot"
		firstAscentDate "01/01/1975"
	}
	{
		name "Cleft Gully"
		grades {
			scottish 5
			overall "V"
		}
		stars 2
		length 70
		description "Ascend the gully."
		firstAscentClimber "Bobby Climbsalot"
		firstAscentDate "01/01/1976"
		pitches
			{
				grade 4
				length 40
				description "Follow the icy gully to the steepening. Ascend this and make the belay."
			}
			{
				grade 6
				length 30
				description "Make up and left through icy hooks to a short overhang."
			}			
	}
}

println json