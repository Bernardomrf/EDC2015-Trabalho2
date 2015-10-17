using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EDC2015_Trabalho2
{
    public partial class Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                XmlDataSource1.XPath = "/cursos/curso[@grau='Licenciatura' and @local='Campus Universitário de Santiago, Aveiro']";

            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            XmlDataSource1.XPath = "/cursos/curso[@grau='"+ DropDownList1.SelectedValue  + "' and @local='"+ DropDownList2.SelectedValue + "']";
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            XmlDataSource1.XPath = "/cursos/curso[@grau='"+ DropDownList1.SelectedValue + "' and @local='" + DropDownList2.SelectedValue + "']";
        }
    }
}

//XPath="/cursos/curso[@grau='Licenciatura' and @local='Campus Universitário de Santiago, Aveiro']"