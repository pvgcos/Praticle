using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ViewState["myname"] = TextBox1.Text.ToString();
            TextBox1.Text = " ";
            Label1.Text = "Text is stored";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ViewState["myname"] != null)
            {
                Label1.Text = ViewState["myname"].ToString();
            }
        }
    }
}