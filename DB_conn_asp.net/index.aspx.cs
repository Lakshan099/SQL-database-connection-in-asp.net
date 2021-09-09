    string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =python_test; SslMode = none";
    //string mycon = "Server=localhost;Database=test1;Uid=root;Password= ;";
    MySqlConnection con = new MySqlConnection(mycon);
    MySqlCommand cmd = null;
    try
    {
        cmd = new MySqlCommand("INSERT INTO persons (PersonID, LastName, FirstName, Address, City) VALUES (0102,'Sandanadyaka','Laksdhan','Banddaragama','Wevdita');", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }
    catch (Exception ex)
    {
       
        con.Close();
        return;
    }
    

