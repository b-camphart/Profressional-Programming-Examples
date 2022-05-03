Scenario Outline: Can't move too far
  Given a flat, 30 by 30 map
    And a unit is in the center of the map
    And the unit has a maximum allowed distance of 10
   When the player moves the unit a distance of 10.1 at <angle>
   Then a "TOO FAR" message should be given
    And the unit should not have been moved
    
Examples: 
  | angle       |
  | 0 degrees   |
  | 45 degrees  |
  | -30 degrees |
  | 90 degrees  |
  | 276 degrees |
