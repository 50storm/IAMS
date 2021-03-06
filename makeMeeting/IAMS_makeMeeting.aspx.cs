﻿using System;
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
            if (!Page.IsPostBack)
            {
                //fvMeetingMain.DefaultMode = FormViewMode.ReadOnly;
                //fvMeetingMain.DefaultMode = FormViewMode.Insert;
                fvMeetingMain.Visible = true;
                if (fvMeetingMain.SelectedValue == null)
                {
                    fvMeetingMain.DefaultMode = FormViewMode.Insert;
                }
                else 
                {
                    fvMeetingMain.DefaultMode = FormViewMode.ReadOnly;
                }

                dvMeetingSub.DefaultMode = DetailsViewMode.Insert;
            }
            else 
            {
                fvMeetingMain.DefaultMode = FormViewMode.ReadOnly;
                dvMeetingSub.DefaultMode = DetailsViewMode.ReadOnly;
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

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

            TextBox txtPlace = (TextBox)fvMeetingMain.FindControl("txtPlace");

            if (args.Value.ToString().Equals(string.Empty))
            {
                args.IsValid = false;
            
                txtPlace.BackColor = System.Drawing.Color.Pink;

                
            }
            else 
            {
                args.IsValid = true;
            
                txtPlace.BackColor = System.Drawing.Color.White;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //if(fvMeetingMain.DefaultMode == FormViewMode.ReadOnly){
                Label ID = (Label)this.fvMeetingMain.FindControl("lblMeetingID");
                
                this.Session["ID"] = ID.Text;

                Response.Redirect("~/IAMS_InputForm.aspx");
            //}
        }




        
    }
}