using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace m_page
{
    public partial class kqtimkiem : System.Web.UI.Page
    {
        SqlConnection sqlCnn = new SqlConnection();
        SqlDataAdapter sqlda = new SqlDataAdapter();
        DataTable dt = new DataTable();
    
        protected void Page_Load(object sender, EventArgs e)
        {
            string tensach = Session["tensach"].ToString();
            string tacgia = Session["tacgia"].ToString();
            //khoi tao doi tuong ket noi
            SqlConnection sqlCnn = new
           SqlConnection("Data Source=PC-MINHIUS\\HAMINHHIEU;Initial Catalog=ShoppingOnline1;Integrated Security=True");
            //mo ket noi
            string sqlstr = "select * from tbl_sach where ten_sach like N'%" + tensach + "%' and tacgia_sach like N'%" + tacgia + "%'";
            try
            {
                sqlCnn.Open();
                //khoi tao doi tuong dataadapter
                SqlDataAdapter sqlAdap = new SqlDataAdapter(sqlstr, sqlCnn);
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
                sqlCnn.Close();
                sqlda.Dispose();
                dt.Dispose();
            }
        }
    }
}