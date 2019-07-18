*** Settings ***
Library  SeleniumLibrary
Library  Collections



*** Variables ***


*** Keywords ***
Open Variable lists
    # @{List1}  Create List    1  2  3  4  5
    : FOR   ${i}   IN RANGE  1  10
    \   Log To Console  ${i}
