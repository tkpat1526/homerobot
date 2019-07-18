*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${exitpages} =          link=Most Popular Exit Pages
${landingpages} =       link=Most Popular Landing Pages
${popularpages} =       link=Most Popular Pages




*** Keywords ***
Open most popular exit pages
    click element        ${exitpages}
    page should contain   Most Popular Exit Pages
    title should be        Page Report
Open most popular landing pages
    click element        ${landingpages}
    page should contain    Most Popular Landing Pages
    title should be        Page Report
Open most popular pages
    click element        ${popularpages}
    page should contain     Most Popular Pages
    title should be        Page Report
