*** Settings ***
Resource  ../PO/Common.robot
Resource  ../PO/Login.robot
Resource  ../PO/HomePage.robot
Resource  ../PO/VisitorList.robot
Resource  ../PO/Setup/Setup.robot
Resource  ../PO/Supports/Support.robot
Resource  ../PO/Reports/Reports.robot
Resource  ../PO/Reports/LeadManager1/ReportLead.robot
Resource  ../PO/Reports/Pages/Pages.robot
Resource  ../PO/Reports/Statistics/Statistics.robot
Resource  ../PO/Reports/TriggerReports/TriggerReports.robot
Resource  ../PO/Reports/Visitors/Visitors.robot
Resource  ../PO/Setup/ContactInformation/ContactInformation.robot
Resource  ../PO/Setup/DataManager/DataManager.robot
Resource  ../PO/Setup/EmailReports/emailreports.robot
Resource  ../PO/Setup/Integration/Integration.robot
Resource  ../PO/Setup/LeadManager/SetupLeadManager.robot
Resource  ../PO/Setup/UserSetup/UsersSetup.robot
Resource  ../PO/Accelerate/Accelerate.robot
Library  SeleniumLibrary
Test Setup              Begin Web Test
#Test Teardown           End Web Test
Force Tags   Regression

*** Variables ***


*** Test Cases ***
# //////////////////////////////Login page/////////////////////////////////////////
user is able to login sucessfully
#Login.enter login First letter in all keyword is file name where all the keyword stored
    [Tags]  Login  Smoke  Sanity  Regression
    Login.Enter invalid login id and valid password
    Login.Enter valid login id and invalid password
    Login.Enter valid login id and password
# ///////////////////////////////////Home age????????????????????????????????????????
user is able to navigate to all pages
    [Tags]  Pages  Smoke  Sanity
    Login.Enter valid login id and password
    HomePage.Open Dashboard Page
    HomePage.Open Visitor List Page
    HomePage.Open Reports pages
    Reports.Open categories page
    HomePage.Open Leads page
#    HomePage.Open Messenger page
    HomePage.Open Search page
    HomePage.Open Setup pages
    Setup.Open account setting page
     HomePage.Open Support Page
    Support.Open Raisaticket Page
    HomePage.Open Academy page
#    HomePage.Open Accelerate page
    # //////// all the pages in Reports menu  ///////////////////////
user is able to navigate to all pages in Reports
    [Tags]  Reports  Pages  Smoke  Sanity
    Login.Enter valid login id and password
    HomePage.Open Reports pages
    Reports.Open categories page
    HomePage.Open Reports pages
    Reports.Open custom reports page
    HomePage.Open Reports pages
    Reports.Open external link page
    HomePage.Open Reports pages
    Reports.Open keywords page
    HomePage.Open Reports pages
    Reports.Open login activity page
    HomePage.Open Reports pages
    Reports.Open login referring sites page
    HomePage.Open Reports pages
    Reports.Open visitor assignment report page
    HomePage.Open Reports pages
    Reports.Open visitor statistics report page
    HomePage.Open Reports pages
    Reports.Open watch list page
user is able to navigate to all pages in reports - Lead manager
    [Tags]  Replead   Pages   Smoke  Sanity
    Login.Enter valid login id and password
    HomePage.Open Reports pages
    Reports.Open lead manager page
    ReportLead.Open Lead Manager - Conversion Page
    HomePage.Open Reports pages
    Reports.Open lead manager page
    ReportLead.Open lead manager - distribution page
    HomePage.Open Reports pages
    Reports.Openlead manager page
    ReportLead.Open lead manager - lead to action page
    HomePage.Open Reports pages
    Reports.Open lead manager page
    ReportLead.Open lead manager - overview page
    HomePage.Open Reports pages
    Reports.Open lead manager page
    ReportLead.Open lead manager - transaction page
    HomePage.Open Reports pages
    Reports.Open lead manager page
    ReportLead.Open lead manager - revenue page
user is able to navigate to all pages in reports - Pages
    [Tags]  Reppage   Pages   Smoke  Sanity
    Login.Enter valid login id and password
    HomePage.Open Reports pages
    Reports.Hover to Pages page
    Pages.Open most popular exit pages
    HomePage.Open Reports pages
    Reports.Hover to Pages page
    Pages.Open most popular landing pages
    HomePage.Open Reports pages
    Reports.Hover to Pages page
    Pages.Open most popular pages
User is able to navigate all the pages in Reports - Statistics
    [Tags]  Repstat   Pages   Smoke Sanity
    Login.enter valid login id and password
    HomePage.Open Reports pages
    Open Reports statistics page
    Statistics.open statistics (overview) page
User is able to navigate to al the pages in Reports - Trigger reports
    [Tags]  Reptrigger    Pages   Smoke Sanity
    Login.enter valid login id and password
    HomePage.Open Reports pages
    Reports.Open reports - trigger reports page
    TriggerReports.Open my trigger reports page
User is able to navigate to all pages in Reports - Visitors page
    [Tags]  Repvisit   Pages   Smoke  Sanity
    Login.enter valid login id and password
    HomePage.Open Reports pages
    Open Visitor Reports Page
    Visitors.Open atoz page
    HomePage.Open Reports pages
    Open Visitor Reports Page
    Visitors.Open hidden companies page
    HomePage.Open Reports pages
    Open Visitor Reports Page
    Visitors.Open most engagged page
# /////////////////////////// All the pages in setup Menu /////////////////////////////////////////
User is able to navigate to all pages in Setup
    [Tags]  Setup   Pages   Smoke  Sanity
    Login.enter valid login id and password
    HomePage.Open Setup Pages
    Setup.Open account setting page
    HomePage.Open Setup Pages
    Setup.Open custom integration page
    HomePage.Open Setup Pages
    Setup.Open Conversion Tracking page
    HomePage.Open Setup Pages
    Setup.Open desktopnotification page
    HomePage.Open Setup pages
    Setup.Open custom messenger page
    HomePage.Open Setup pages
    Setup.Open reassign visitors page
    HomePage.Open Setup pages
    Setup.Open regions page
    HomePage.Open Setup pages
    Setup.Open statistics page
    HomePage.Open Setup pages
    Setup.Open tracking code page
    HomePage.Open Setup pages
    Setup.Open trigger report page
    HomePage.Open Setup pages
    Setup.Open visitor categorisation page
User is able to navigate to all pages in setup - data manager
    [Tags]  DataManager   Pages   Smoke  Sanity
    Login.enter valid login id and password
    HomePage.Open Setup pages
    Setup.open data manager page
    DataManager.Open data manager pages-import data
    HomePage.Open Setup pages
    Setup.open data manager page
    DataManager.Open data manager pages-manage data
User is able to navigate to all pages in setup - Email reports
    [Tags]  Emailreports   Pages   Smoke  Sanity
    Login.enter valid login id and password
    HomePage.Open Setup pages
    Setup.Open Email Reports page
    EmailReports.Open email reports Pages-visitor list
    HomePage.Open Setup Pages
    Setup.Open Email Reports page
    EmailReports.Open email reports Pages-keyword
User is able to navigate all pages in setup - Integration
    [Tags]  Integration   Pages   Smoke  Sanity
    Login.enter valid login id and password
    HomePage.Open Setup pages
    Setup.Open integration page
    Integration.Open Integration pages-Integration settings
    HomePage.Open Setup pages
    Setup.Open integration page
    Integration.Open Integration pages-country
    HomePage.Open Setup pages
    Setup.Open integration page
    Integration.Open Integration pages-sentvisits
User is able to navigate to all pages in setup - Lead manager
    [Tags]  LeadManager   Pages   Smoke  Sanity
    Login.enter valid login id and password
    HomePage.open setup pages
    Setup.Open Lead manager page
    SetupLeadManager.Open lead manager pages- importdata
    HomePage.open setup pages
    Setup.Open Lead manager page
    SetupLeadManager.Open lead manager pages- managedata
    HomePage.open setup pages
    Setup.Open Lead manager page
    SetupLeadManager.Open lead manager pages- leadsetup
User is able to navigate to all pages in setup - user setup
    [Tags]  Usersetup   Pages   Smoke  Sanity
    Login.enter valid login id and password
    HomePage.open setup pages
    Setup.Open user setup page
    UsersSetup.Open user pages - user setup
    HomePage.open setup pages
    Setup.Open user setup page
    UsersSetup.Open user pages - disabled users
user is able to navigate to all pages in setup - Contact information
    [Tags]  contactinformation   Pages   Smoke  Sanity
    Login.enter valid login id and password
    HomePage.Open Setup Pages
    Setup.Open contact information page
    ContactInformation.Open contact information pages-allocated credits
    HomePage.Open Setup Pages
    Setup.Open contact information page
    ContactInformation.Open contact information pages-invoices
    HomePage.Open Setup Pages
    Setup.Open contact information page
    ContactInformation.Open contact information pages-purchase contacts
#    //// all pages in Suppoert menu ////////////////////
User is able to navigate to all pages in Support
    [Tags]  Supports   Pages   Smoke  Sanity
    Login.enter valid login id and password
    HomePage.Open Support page
    Support.Open raisaticket page
    HomePage.Open Support page
    Support.Open ideas page
    HomePage.Open Support page
    Support.Open API page
#    ////  all pages in Accelerate menu /////////////
user is able to navigate to all pages in accelerate
    [Tags]  Accelerate   Pages   Pages  Smoke  Sanity
    Login.enter valid login id and password
    Accelerate.Hover to accelerate page
    Accelerate.Open Accelerate - settings page
    Accelerate.Hover to accelerate page
    Accelerate.Open Accelerate - audience page
    Accelerate.Hover to accelerate page
    Accelerate.Open Accelerate - conversation page
    Accelerate.Hover to accelerate page
    Accelerate.open Accelerate - mappings page
    Accelerate.Hover to accelerate page
    Accelerate.Open accelerate- reports page
    Accelerate.Hover to accelerate page

# //////////////////// Visitor List Page ////////////////////////
user is able to enable auto refresh
    [Tags]   Autorefresh  Visitorlist    Sanity
    Login.enter valid login id and password
    sleep  5s
    VisitorList.user is able to click on auto refresh button
    #  varification with select fram drop down menu
    #  Today,yesterday,two days and custom date - varification first and sixth companiy from the list
user should be able to select different time frame
    [Tags]  Timeframe  Visitorlist  Sanity
    Login.enter valid login id and password
    sleep  5s
    VisitorList.Click on page size
    Select page size 10
    VisitorList.click on Time frame option
    sleep  3s
    VisitorList.select yesterday's time frame
    sleep  3s
    VisitorList.Match visit by yesterday's date
    sleep  3s
    VisitorList.Select two days time frame
    VisitorList.Match Visit By Two Day's Date
    VisitorList.Select today's time frame
    VisitorList.Match visits by today's date
    VisitorList.user is able to select Custom time frame
User is able to diable Unique Visits only Button
    [Tags]  Uniquevisit  Visitorlist   Sanity
    Login.enter valid login id and password
    HomePage.open visitor list page
    VisitorList.Disable and enable unique visits only button
User is able to enable modern and classic view
    [Tags]  Modernview  Visitorlist   Sanity
    Login.enter valid login id and password
    HomePage.Open Visitor List Page
    VisitorList.Click On Modern View
    VisitorList.Click on Classic View
User is able to disable and enable expand all button
    [Tags]  expandall  Visitorlist   Sanity
    Login.enter valid login id and password
    HomePage.open visitor list page
    VisitorList.Click On Modern View
    VisitorList.Disable and enable expand all button
User is able to serach visits by company name
    [Tags]  searchcompany  Visitorlist   Sanity
    Login.enter valid login id and password
    HomePage.open visitor list page
    VisitorList.Search visits by company name
User is able to search visits by keyword
    [Tags]  searchkeyword  Visitorlist   Sanity
    Login.enter valid login id and password
    HomePage.open visitor list page
    VisitorList.Search Visits by keyword
User is able to change the page size and navigate to next pages
    [Tags]  Pagesize  Visitorlist   Sanity
    Login.enter valid login id and password
    HomePage.Open Visitor List Page
    VisitorList.Click on page size
    VisitorList.Select page size 10
    VisitorList.Click on page size
    VisitorList.Select page size 50
    VisitorList.Click on page size
    VisitorList.Select page size 100
User able to ascending and descending score tooltip
    [Tags]  scoretooltip  Visitorlist   Sanity
    Login.Enter valid login id and password
    HomePage.Open Visitor List Page
    VisitorList.Open column menu
    VisitorList.click on hot score button
    VisitorList.verify hotscore tootip with ascending and descending
User is able to chaneg pages
    [Tags]  pages1  Visitorlist   Sanity
    Login.Enter valid login id and password
    HomePage.Open Visitor List Page
    VisitorList.verify the page size in visitorlist


