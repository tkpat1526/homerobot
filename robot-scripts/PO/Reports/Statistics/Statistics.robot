*** Settings ***
Library     SeleniumLibrary




*** Variables ***
${statisticsoverview} =          link=Statistics (Overview)




*** Keywords ***
open Statistics (Overview) page
    click element                                           ${statisticsoverview}
    page should contain                                     Statistics Overview
    title should be                                         Statistics Overview
