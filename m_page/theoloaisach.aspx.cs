using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace m_page
{
    public partial class theoloaisach : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection();

        SqlDataAdapter sqlda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cnn = new
          SqlConnection("Data Source=PC-MINHIUS\\HAMINHHIEU;Initial Catalog=ShoppingOnline1;Integrated Security=True");
            string maloai = Request.QueryString["maloai"];
            String sql = "select * from TBL_Sach where Ma_Dausach='" + maloai + "'";
            try
            {
                cnn.Open();
                
            SqlDataAdapter sqlAdap = new SqlDataAdapter(sql, cnn);
                //thuc thi
                sqlAdap.Fill(dt);
                //kt ket qua tra ve
                if (dt.Rows.Count > 0)
                {
                    DataList1.DataSource = dt;
                    DataList1.DataBind();
                }
                else
                {
                    
                }
            }
            catch (Exception ex)
            {
               
            }
            finally
            {
               cnn.Close();
                sqlda.Dispose();
                dt.Dispose();
            }

        }
    }
}
    
