﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page
{
    protected void cmbox_DataBound(object sender, EventArgs e)
    {
        ListEditItem defaultItem = new ListEditItem("------Select One------------", -1);
        cmbox.Items.Insert(0, defaultItem);
        cmbox.SelectedIndex = 0;
    }
}