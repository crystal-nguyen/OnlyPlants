# OnlyPlants

### Setting up the project:
Make sure to set up the database dump first on your local machine
    `psql -d $(local database) -U $(local user) -f onlyplants.sql`
    
Then update all the following string
    `private string connectionString = "Server=localhost;Port=$(local port);User Id=$(local user);Password=$(local password);Database=(local database)";`
on these referenced files to match your local profile and configurations:
-Checkout.aspx.cs
-Login.aspx.cs
-Order.aspx.cs
-Products.aspx.csc
-Signup.aspx.cs
