/*:
 [Previous](@previous)
 
 The following statement is required to make the playground run.
 
 
 Please do not remove.
 */
import Foundation
/*:
 ## Exercise
 
 Write a function that determines the shortest distance from a point on a Cartesian plane to a line on a Cartesian plane.
 
 You can re-use the **Point** structure and the *distance* function.
 
 You should declare a **Line** structure.
 
 Recall that the shortest distance from a point to a line is the perpendicular distance.

*/

// Our given line is y = -1/2x + 9.5
// Our given Point is at (6, 1.5)

// Defined a structure representing a Point on a Cartesian plane
struct Point {
    var x : Double = 0.0
    var y : Double = 0.0
}

// Create an instance of the point from our problem
var cabinSite = Point(x: 6, y: 1.5)

// Define a structure that represents the slope
struct Slope {
    var rise : Double = 1.0
    var run : Double = 1.0
}

// Define a structure that represents a line
struct Line {
    var slope : Slope = Slope(rise: 1.0, run: 1.0)
    var verticalIntercept : Double = 0.0
}

// Create an instanse of the line from our problem
var slopeOfExistingRoad = Slope(rise: -1, run: 2)
var existingRoad = Line(slope: slopeOfExistingRoad, verticalIntercept: 9.5)

///Returns the slope of a line perpendicular to the provided line
/// - Parameter given Line: The line that we are starting from
/// - Returns: Returns the slope of the line that is perpendicuar
func getSlopeOfPerpendicularLine(from givenLine : Line) -> Slope {
    return Slope(rise: givenLine.slope.run, run: givenLine.slope.rise * -1)
}

// get the perpendicular slope (slope of the new road from the cabin to the existing road)
let perpendicularSlope = getSlopeOfPerpendicularLine(from: existingRoad)
