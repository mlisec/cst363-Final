CREATE VIEW `Pending_Loan` AS
	SELECT name, loan_amount, street_address, city, state, zipcode 
    FROM borrower b
    JOIN LoanApplication l ON b.User_ID = l.User_ID