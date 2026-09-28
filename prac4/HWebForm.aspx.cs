using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prac4
{
    public partial class HWebForm : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void validateDepartment_Server(object source, ServerValidateEventArgs args)
        {
            args.IsValid = Btech.Checked || BCA.Checked || Mtech.Checked || MCA.Checked;
        }

        protected void validateGender_Server(object source, ServerValidateEventArgs args)
        {
            args.IsValid = Male.Checked || Female.Checked;
        }

        protected void validateSkills_Server(object source, ServerValidateEventArgs args)
        {
            args.IsValid = Coding.Checked || Reading.Checked || FastTyping.Checked;
        }

        protected void validateTerms_Server(object source, ServerValidateEventArgs args)
        {
            args.IsValid = IAgree.Checked;
        }
    }
}