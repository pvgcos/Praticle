using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ViewState["myname"] = TextBox1.Text.ToString();
            TextBox1.Text = " ";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (ViewState["myname"] != null)
            {
                TextBox1.Text = ViewState["myname"].ToString();
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Label2.Text = TextBox1.Text;
        }
    }
}