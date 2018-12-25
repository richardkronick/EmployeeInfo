using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeInfo
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string result = txtName.Text + " is based in " + DropDownList1.Text;

            if (rdoMarketing.Checked == true)
                result += " in the Marketing department ";
            else if (rdoAccounting.Checked == true)
                result += " in the Accounting department";
            else if (rdoLegal.Checked == true)
                result += " in the Legal department";

            result += " with the following degrees: ";

            if (chkBA.Checked == true)
                result += " BA";
            if (chkMA.Checked == true)
                result += " MA";
            if (chkPHD.Checked == true)
                result += " PHD";
            else if (chkPHD.Checked == false && chkMA.Checked == false && chkBA.Checked==false)
                result += "no degrees";

            lblFinalResult.Text = result;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}