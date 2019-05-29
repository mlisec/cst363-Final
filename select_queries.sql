-- List all application user owned
SELECT LoanApplication.* FROM User JOIN LoanApplication ON User.ID = LoanApplication.User_ID WHERE user.ID = 1

-- List all borrower are in the application
SELECT Borrower.* FROM LoanApplication JOIN Borrower_has_LoanApplication ON LoanApplication.applicationID = Borrower_has_LoanApplication.LoanApplication_applicationID JOIN Borrower ON Borrower.borrowerID = Borrower_has_LoanApplication.Borrower_borrowerID WHERE LoanApplication.applicationID = 1

-- Total debts for all borrower in application
SELECT SUM(Debts.balance) AS Total_Debts FROM LoanApplication JOIN Borrower_has_LoanApplication ON LoanApplication.applicationID = Borrower_has_LoanApplication.LoanApplication_applicationID JOIN Borrower ON Borrower.borrowerID = Borrower_has_LoanApplication.Borrower_borrowerID JOIN Debts ON Debts.Borrower_borrowerID = Borrower.borrowerID WHERE LoanApplication.applicationID = 1

-- List all loan that has a borrower with debts
SELECT LoanApplication.* FROM LoanApplication JOIN Borrower_has_LoanApplication ON LoanApplication.applicationID = Borrower_has_LoanApplication.LoanApplication_applicationID JOIN Debts ON Debts.Borrower_borrowerID = Borrower_has_LoanApplication.Borrower_borrowerID WHERE Debts.balance > 0 GROUP BY applicationID

-- Count how many borrower does a user have
SELECT Count(Borrower.borrowerID) AS TotalBorrower FROM User JOIN Borrower ON User.ID = Borrower.User_ID