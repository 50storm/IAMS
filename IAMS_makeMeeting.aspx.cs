using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IAMS
{
    public partial class IAMS_makeMeeting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                fvMeetingMain.DefaultMode = FormViewMode.ReadOnly;

            
            }
            
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            
        }

        protected void sdsMeetingMain_Inserting(object sender, SqlDataSourceCommandEventArgs e)
        {

        }

        protected void InsertButton_Click(object sender, EventArgs e)
        {

        }

        protected void sdsMeetingMain_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void sdsMeetingMain_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
          //  Response.Redirect("~/IAMS_makeMeetingSub.aspx");

        }

        protected void sdsMeetingMain_Updating(object sender, SqlDataSourceCommandEventArgs e)
        {
            if (Page.IsValid)
            {


            }
            else 
            {
                return;
            }
        }




        
    }
}