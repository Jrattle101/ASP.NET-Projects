using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace ContactList
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String cid = (String)GridView1.DataKeys[GridView1.SelectedIndex].Value;
            XmlDataSource2.XPath = String.Format( "/root/Id[@cid='{0}']/ContactInfo", cid);
            GridView2.Visible = true;
            Button1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView2.Visible = false;
            Button1.Visible = false;

        }
    }
}