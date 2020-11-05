from __future__ import unicode_literals



#Parabank locators
PARABANK_TITLE = "//img[@title='ParaBank']"
USERNAME_INPUT = "name=username"
PASSWORD_INPUT = "name=password"
LOGIN_BUTTON = "//input[@value='Log In']"

ACCOUNTS_TITLE = "//h1[text()='Accounts Overview']"

#Locators for New Account
NEW_ACCOUNT_LINK = "//ul/li/a[text()='Open New Account']"
NEW_ACCOUNT_TITLE = "//h1[text()='Open New Account']"
#ACCOUNT_QUERRY_TEXT = "//form/p/b[text()='What type of Account would you like to open?']"
ACCOUNT_TYPE_SELECTOR = "//select[@id='type']"
ACCOUNT_SAVINGS_BUTTON = "//select/option[@value=1]"
NEW_ACCOUNT_BUTTON = "//input[@type='submit']"
ACCOUNT_OPENED_TITLE = "//h1[text()='Account Opened!']"

#Validate New Account
NEW_ACCOUNT_ID = "id = newAccountId"
ACCOUNTS_OVERVIEW_LINK = "//ul/li/a[text()='Accounts Overview']"
ACCOUNT_DETAILS_TITLE = "//h1[text()='Account Details']"
ACCOUNT_TYPE_SAVINGS = "//td[text()='SAVINGS']"

#Requesting Loan
LOAN_LINK = "//ul/li/a[text()='Request Loan']"
REQUEST_LOAN_TITLE = "//h1[text()]"
LOAN_AMOUNT_INPUT = "//*[@id='amount']"
DOWN_PAYMENT_INPUT = "//*[@id='downPayment']"
APPLY_LOAN_BUTTON = "//input[@type='submit']"
LOAN_ACCEPTED_TITLE = "//h1[text()]"
#Request loan succsessfully
LOAN_APPROVED_TEXT = "//td[text()='Approved']"
#Request loan fail
LOAN_FAIL_TEXT = "//td[text()='Denied']"

#Transferring funds
TRANSFER_FUNDS_LINK = "//ul/li/a[text()='Transfer Funds']"
TRANSFER_FUNDS_TITLE = "//h1[text()='Transfer Funds']"
TRANSFER_AMOUNT = "//input[@id='amount']"
TRANSFER_FROM_SELECTOR = "//select[@id='fromAccountId']"
#TRANSFER_FROM_ID = ""
TRANSFER_TO_SELECTOR = "//select[@id='toAccountId']"
TRANSFER_BUTTON = "//input[@type='submit']"
FUNDS_TRANSFERED_TITLE = "//h1[text()='Transfer Complete!']"

#Create a new banking customer
SIGNING_UP_TITLE = "//h1[text()='Signing up is easy!']"
CUSTOMER_FIRSTNAME = "id=customer.firstName"
CUSTOMER_LASTNAME = "id=customer.lastName"
CUSTOMER_ADDRESS = "id=customer.address.street"
CUSTOMER_CITY = "id=customer.address.city"
CUSTOMER_STATE = "id=customer.address.state"
CUSTOMER_ZIPCODE = "id=customer.address.zipCode"
CUSTOMER_PHONE = "id=customer.phoneNumber"
CUSTOMER_SSN = "id=customer.ssn"
CUSTOMER_USERNAME = "id=customer.username"
CUSTOMER_PASSWORD = "id=customer.password"
CUSTOMER_CONFIRM = "id=repeatedPassword"
SUBMIT_SIGN_IN_BUTTON = "value=Register"

ERROR_MESSAGE_TEXT = "class=error"

#Parabank error messages
ERROR_MESSAGE_1 = "The username and password could not be verified."