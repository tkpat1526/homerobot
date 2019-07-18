*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${contactinformationallocatecredit}=        link=Allocate Credits
${contactinformationinvoices}=              link=Invoices
${contactinformationpurchase}=              link=Purchased Contacts


*** Keywords ***
Open contact information pages-allocated credits
    Click Element                          ${contactinformationallocatecredit}
    Page Should Contain                    Allocate Credits
    title should be                        Allocate Credits
Open contact information pages-invoices
    Click Element                          ${contactinformationinvoices}
    Page Should Contain                    Invoices
    title should be                        Invoices
Open contact information pages-purchase contacts
    Click Element                         ${contactinformationpurchase}
    Page Should Contain                   Purchased Contacts
    title should be                       Purchased Contacts