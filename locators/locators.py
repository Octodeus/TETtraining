# -*- coding: utf-8 -*-
from __future__ import unicode_literals

#Parabank index page locators
PARABANK_TITLE = "//img[@title='ParaBank']"
USERNAME_INPUT = "name=username"
PASSWORD_INPUT = "name=password"
LOGIN_BUTTON = "//input[@value='Log In']"

ACCOUNTS_TITLE = "//h1[text()='Accounts Overview']"

ERROR_MESSAGE_TEXT = "class=error"

#Parabank error messages
ERROR_MESSAGE_1 = "The username and password could not be verified."

#Open a new account
ACCOUNTS_TITLE = "//h1[text()='Accounts Overview']"

NEW_ACCOUNT_LINK = "//ul/li/a[text()='Open New Account']"
NEW_ACCOUNT_TITLE = "//h1[text()='Open New Account']"
#ACCOUNT_QUERRY_TEXT = "//form/p/b[text()='What type of Account would you like to open?']"
ACCOUNT_TYPE_SELECTOR = "//select[@id='type']"
ACCOUNT_SAVINGS_OPTION = "//select[@id='type']/option[@value='1']"
NEW_ACCOUNT_BUTTON = "//input[@type='submit']"
ACCOUNT_OPENED_TITLE = "//h1[text()='Account Opened!']"
NEW_ACCOUNT_ID = "id=newAccountId"

#Accounts overview link
ACCOUNTS_OVERVIEW_LINK = "//ul/li/a[text()='Accounts Overview']"
SAVINGS_ACCOUNT_IN_LIST = "//a[contains(@href,"+NEW_ACCOUNT_ID+")]"


#Request new loan
LOAN_LINK = "//ul/li/a[text()='Request Loan']"
REQUEST_LOAN_TITLE = "//h1[text()]"
LOAN_AMOUNT_INPUT = "//*[@id='amount']"
DOWN_PAYMENT_INPUT = "//*[@id='downPayment']"
APPLY_LOAN_BUTTON = "//input[@type='submit']"
LOAN_ACCEPTED_TITLE = "//h1[text()]"