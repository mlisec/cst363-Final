-- Insert User
INSERT INTO `User`(`ID`, `email`, `password`) VALUES (1,'tanguyen@csumb.edu','123456');
INSERT INTO `User`(`ID`, `email`, `password`) VALUES (2,'mlisec@csumb.edu','mlisec');

-- Insert Application
INSERT INTO `LoanApplication`(`applicationID`, `loan_amount`, `street_address`, `city`, `state`, `zipcode`, `User_ID`) VALUES (1,'400000','526 Capitol Ave','San Jose','CA','95111',1);
INSERT INTO `LoanApplication`(`applicationID`, `loan_amount`, `street_address`, `city`, `state`, `zipcode`, `User_ID`) VALUES (2,250000,'673 Winchester Ave','San Jose','CA','88184',1);

-- Insert Borrower
INSERT INTO `Borrower`(`borrowerID`, `name`, `email`, `phone_number`, `date_of_birth`, `credit_score`, `User_ID`) VALUES (1,'Tai Nguyen','tainguyen92@gmail.com','408-444-4444','01-01-1990',800,1);
INSERT INTO `Borrower`(`borrowerID`, `name`, `email`, `phone_number`, `date_of_birth`, `credit_score`, `User_ID`) VALUES (2,'John Doe','jdoe@gmail.com','408-444-1111','01-01-1900',740,1);


-- Insert linked borrower with application
INSERT INTO `Borrower_has_LoanApplication`(`Borrower_borrowerID`, `Borrower_User_ID`, `LoanApplication_applicationID`, `LoanApplication_User_ID`) VALUES (1,1,1,1);
INSERT INTO `Borrower_has_LoanApplication`(`Borrower_borrowerID`, `Borrower_User_ID`, `LoanApplication_applicationID`, `LoanApplication_User_ID`) VALUES (2,1,2,1);

-- Insert Debts
INSERT INTO `Debts`(`account_number`, `creditor`, `balance`, `past_due`, `date_open`, `Borrower_borrowerID`, `Borrower_User_ID`) VALUES ('412442355390','Bank Of America',150000,0 ,NOW(), 1,1);
INSERT INTO `Debts`(`account_number`, `creditor`, `balance`, `past_due`, `date_open`, `Borrower_borrowerID`, `Borrower_User_ID`) VALUES ('34741425','Chase',10000,0 ,NOW() - INTERVAL 1 YEAR, 1,1);
INSERT INTO `Debts`(`account_number`, `creditor`, `balance`, `past_due`, `date_open`, `Borrower_borrowerID`, `Borrower_User_ID`) VALUES ('4124662','Wells Fargo',501000,0 ,NOW() - INTERVAL 2 WEEK, 2,1);
INSERT INTO `Debts`(`account_number`, `creditor`, `balance`, `past_due`, `date_open`, `Borrower_borrowerID`, `Borrower_User_ID`) VALUES ('462893','City Bank',255257.53,0 ,NOW() - INTERVAL 12 YEAR, 2,1);
