using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Searchable_Dropdown_SearchableDropdown : System.Web.UI.Page
{
    string connectionString = ConfigurationManager.ConnectionStrings["Ginie"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind_Role();
        }
    }

    public void Bind_Role()
    {
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            con.Open();
            string sql = "select UserRole, RoleName, HomePage from UserRoles867";
            SqlCommand cmd = new SqlCommand(sql, con);

            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            con.Close();

            ddlRole.DataSource = dt;
            ddlRole.DataTextField = "RoleName";
            //ddlRole.DataValueField = "UserRoleID"; //any other value
            ddlRole.DataBind();
            ddlRole.Items.Insert(0, new ListItem("------Select Role------", "0"));
        }
    }

    protected void ddlRole_SelectedIndexChanged(object sender, EventArgs e)
    {
        // JS alert message pop-up without redirecting
        string message = $"Event Generation after Roles Changed";
        string script = $"alert('{message}')";
        ScriptManager.RegisterStartupScript(this, this.GetType(), "messageScript", script, true);
    }
}