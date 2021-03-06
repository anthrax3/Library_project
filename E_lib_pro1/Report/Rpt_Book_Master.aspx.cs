﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.ReportSource;
using CrystalDecisions.Shared;

using E_Libpro.My_Function;

namespace E_lib_pro1.Report
{
    public partial class Rpt_Book_Master : System.Web.UI.Page
    {
        string Tbl_Name = "[Book_Master]";
        string sql = "";
        MyClass my = new MyClass();
        string reportPath;
        ReportDocument report1;
        DataTable dt = new DataTable();
        int cid = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            MyClass my = new MyClass();
            reportPath = Server.MapPath("~/Report/Book_Master.rpt");
            report1 = new ReportDocument();
            report1.Load(reportPath);

            if (!IsPostBack)
            {
                string fld = DropDownList1.SelectedValue.ToString();
                string txt = TextBox1.Text;

                if (Session["College_id"] != null)
                {
                    cid = int.Parse(Session["College_id"].ToString());
                    sql = "select * from " + Tbl_Name + " where College_id=" + cid + " and " + fld + " like '" + txt + "%' ";
                    Label1.Text = cid.ToString();
                    Label2.Text = my.Get_College(cid);
                }
                else
                {
                    Label1.Visible = false;
                    Label2.Visible = false;
                    sql = "select * from " + Tbl_Name + " where " + fld + " like '" + txt + "%' ";

                }
                dt = my.GetTable(sql);
                report1.SetDataSource(dt);
                CrystalReportViewer1.ReportSource = report1;
                CrystalReportViewer1.RefreshReport();

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            MyClass my = new MyClass();

            DataTable dt = new DataTable();

            string fld = DropDownList1.SelectedValue.ToString();
            string txt = TextBox1.Text.Trim();
            if (Session["College_id"] != null)
            {
                cid = int.Parse(Session["College_id"].ToString());
                sql = "select * from " + Tbl_Name + " where College_id=" + cid + " and " + fld + " like '" + txt + "%' ";
                Label1.Text = cid.ToString();
                Label2.Text = my.Get_College(cid);
            }
            else
            {
                Label1.Visible = false;
                Label2.Visible = false;
                sql = "select * from " + Tbl_Name + " where " + fld + " like '" + txt + "%' ";

            }

            dt = my.GetTable(sql);
            report1.SetDataSource(dt);
            CrystalReportViewer1.ReportSource = report1;
            CrystalReportViewer1.RefreshReport();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //MyClass my = new MyClass();

            //DataTable dt = new DataTable();

            string fld = DropDownList1.SelectedValue.ToString();
            string txt = TextBox1.Text;
            //if (Session["College_id"] != null)
            //{
            //    cid = int.Parse(Session["College_id"].ToString());
            //    sql = "select * from " + Tbl_Name + " where College_id=" + cid + " and " + fld + " like '" + txt + "%' ";
            //    Label1.Text = cid.ToString();
            //    Label2.Text = my.Get_College(cid);
            //}
            //else
            //{
            //    Label1.Visible = false;
            //    Label2.Visible = false;
            sql = "select * from " + Tbl_Name + " where " + fld + " like '" + txt + "%' ";

            //}

            dt = my.GetTable(sql);
            report1.SetDataSource(dt);
            CrystalReportViewer1.ReportSource = report1;
            CrystalReportViewer1.RefreshReport();

            report1.ExportToHttpResponse(CrystalDecisions.Shared.ExportFormatType.Excel, Response, true, "Report");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //MyClass my = new MyClass();

            //DataTable dt = new DataTable();

            string fld = DropDownList1.SelectedValue.ToString();
            string txt = TextBox1.Text;
            //if (Session["College_id"] != null)
            //{
            //    cid = int.Parse(Session["College_id"].ToString());
            //    sql = "select * from " + Tbl_Name + " where College_id=" + cid + " and " + fld + " like '" + txt + "%' ";
            //    Label1.Text = cid.ToString();
            //    Label2.Text = my.Get_College(cid);
            //}
            //else
            //{
            //    Label1.Visible = false;
            //    Label2.Visible = false;
            sql = "select * from " + Tbl_Name + " where " + fld + " like '" + txt + "%' ";

            //}

            dt = my.GetTable(sql);
            report1.SetDataSource(dt);
            CrystalReportViewer1.ReportSource = report1;
            CrystalReportViewer1.RefreshReport();

            report1.ExportToHttpResponse(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat, Response, true, "Report");

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

    }
    }
