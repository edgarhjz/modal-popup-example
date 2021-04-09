using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            ModalPopupExtender1.Show();
        }
    }
    protected void btnStart_Click(object sender, EventArgs e)
    {
        ModalPopupExtender1.Show();
        Panel1.Visible = true;
    }
}