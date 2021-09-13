using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoeStore
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               // ShowStoreModal();
            }
        }

        #region "Show Modal"
        public void ShowStoreModal()
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "$('#storeModal').modal({backdrop: 'static', keyboard: false});", true);
        }
        #endregion
    }
}