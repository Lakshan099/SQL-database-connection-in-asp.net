 protected void submit_Click(object sender, EventArgs e)
        {
            
            string name=Request.Form.Get("name");
            string eml=Request.Form.Get("email");
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =test1; SslMode = none";
            //string mycon = "Server=localhost;Database=test1;Uid=root;Password= ;";
            MySqlConnection con = new MySqlConnection(mycon);
            MySqlCommand cmd = null;
            try
            {
                cmd = new MySqlCommand("insert into demo(Name,Email) values(@a1,@a2)", con);
                cmd.Parameters.AddWithValue("@a1", name);
                cmd.Parameters.AddWithValue("@a2", eml);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

            }catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                con.Close();
                return;
            }
            Response.Write("<script>alert('Data Saved Successfully')</script>");
        }

        protected void retrieve_Click(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =test1; SslMode = none";
            MySqlConnection con = new MySqlConnection(mycon);
            DataTable dt = new DataTable();
            MySqlCommand cmd = null;
            try
            {
                cmd = new MySqlCommand("Select * from demo", con);
                con.Open();
                dt.Load(cmd.ExecuteReader());
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                con.Close();
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }