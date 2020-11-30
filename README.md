# OnlyPlants

### Website link: </br>
https://onlyplants.azurewebsites.net/

### Setting up the project locally:
Make sure to set up the database dump first on your local machine </br>
    `psql -d $(local database) -U $(local user) -f onlyplants.sql`
    
Then update all the following string </br>
    `private string connectionString = "Server=localhost;Port=$(local port);User Id=$(local user);Password=$(local password);Database=$(local database)";` </br>
on these referenced files to match your local profile and configurations: </br>
- Checkout.aspx.cs
- Login.aspx.cs
- Order.aspx.cs
- Products.aspx.csc
- Signup.aspx.cs
