using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace shoestore
{

    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                FillRepeater();
           
        }

        public DataTable FetchData()
        {
            try
            {
                SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["shoedbConnectionString"].ToString());
                SqlCommand SqlComm = new SqlCommand();
                DataTable DT = new DataTable();

                SqlComm.CommandType = CommandType.StoredProcedure;
                SqlComm.CommandText = "stp_fetchproduct";


                SqlComm.Connection = SqlConn;

                if (SqlConn.State == ConnectionState.Closed)
                {
                    SqlConn.Open();
                }

                SqlDataAdapter SqlDA = new SqlDataAdapter(SqlComm);
                SqlDA.Fill(DT);

                if (SqlConn.State == ConnectionState.Open)
                {
                    SqlConn.Close();
                }

                SqlComm.Dispose();
                SqlConn.Dispose();

                return DT;
            }
            catch (Exception ex) { throw ex; }
        }


        public void FillRepeater()
        {
            DataTable DT = FetchData();

            if ((DT != null) && (DT.Rows.Count > 0))
            {
                Repeater1.DataSource = DT;
                Repeater1.DataBind();
            }
            else
            {
                Repeater1.DataSource = null;
                Repeater1.DataBind();
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "CardClick")
            {
                FillSizeRepeater(Convert.ToInt32(e.CommandArgument.ToString()));
            }
        }

        public void FillSizeRepeater(int id)
        {
            DataTable DT = FetchSizeData(id);

            if ((DT != null) && (DT.Rows.Count > 0))
            {
                sizeRepeater.DataSource = DT;
                sizeRepeater.DataBind();
            }
            else
            {
                sizeRepeater.DataSource = null;
                sizeRepeater.DataBind();
            }
        }
        public DataTable FetchSizeData(int id)
        {
            try
            {
                SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["shoedbConnectionString"].ToString());
                SqlCommand SqlComm = new SqlCommand();
                DataTable DT = new DataTable();

                SqlComm.CommandType = CommandType.StoredProcedure;

                SqlComm.CommandText = "stp_fetchsize";
                SqlComm.Parameters.AddWithValue("@product_id", id);


                SqlComm.Connection = SqlConn;

                if (SqlConn.State == ConnectionState.Closed)
                {
                    SqlConn.Open();
                }

                SqlDataAdapter SqlDA = new SqlDataAdapter(SqlComm);
                SqlDA.Fill(DT);

                if (SqlConn.State == ConnectionState.Open)
                {
                    SqlConn.Close();
                }

                SqlComm.Dispose();
                SqlConn.Dispose();

                return DT;
            }
            catch (Exception ex) { throw ex; }
        }
    }
}