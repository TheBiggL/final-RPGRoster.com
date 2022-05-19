create procedure TokenDupe
as
begin
SET USER ON;
SET TEMPLATE ON;

    insert into custlogin(custusename, custpassword) 
        values ('','') -- put values here (from parameters?)

    insert into custinfo(custid, custfirstname, custlastname, custaddress)
        values (SCOPE_IDENTITY(), '', '', '')  -- put other values here (from parameters?)

SET NOCOUNT OFF;
SET XACT_ABORT OFF;
end