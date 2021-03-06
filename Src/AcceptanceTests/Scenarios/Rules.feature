﻿Feature: Rules
    In order to display the current state of the universe 
    As a Game of Life grid
    I want to obtain the next generation of cells

Scenario: Death by under-population
    Given a live cell has fewer than 2 live neighbours
    When I ask for the next generation of cells
    Then I should get back a new generation
    And it should have the same number of cells
    And the cell should be dead
