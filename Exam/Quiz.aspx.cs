using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initialize quiz questions and correct answers
                List<string> questions = new List<string>
                {
                    "1. What is 1 + 1?",
                    "2. What is the capital of France?",
                    "3. What is the not type of .net language?",
                    "4. Which is not social media platform?",
                    "5. Who is inventor of C language?"
                };
                List<string[]> options = new List<string[]>
                {
                    new string[] { "1", "2", "3", "4" },
                    new string[] { "London", "Berlin", "Paris", "Madrid" },
                    new string[]{ "Asp.net","C#.net","Java","F#" },
                    new string[]{ "goindia","fb","insta","youtube" },
                    new string[]{ "John","Dennis Ritchie","Bjaourne","Alon musk" },
                };
                ViewState["Questions"] = questions;
                ViewState["Options"] = options;
                ViewState["CorrectAnswers"] = new List<string> { "2","Paris","Java","goindia", "Dennis Ritchie" }; // Add correct answers here
                DisplayNextQuestion();
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }
        private void DisplayNextQuestion()
        {
            List<string> questions = (List<string>)ViewState["Questions"];
            List<string[]> options = (List<string[]>)ViewState["Options"];
            if (questions.Count > 0)
            {
                lblResult.Text = "";
                lblQuestion1.Text = questions[0];
                rblOptions1.Items.Clear();
                foreach (string option in options[0])
                {
                    rblOptions1.Items.Add(new ListItem(option));
                }
                questions.RemoveAt(0);
                options.RemoveAt(0);
                ViewState["Questions"] = questions;
                ViewState["Options"] = options;
            }
            else
            {
                lblQuestion1.Text = "";
                rblOptions1.Items.Clear();
                btnSubmit.Enabled = false;
                lblResult.Text = "Quiz completed!";
            }
        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            List<string> correctAnswers = (List<string>)ViewState["CorrectAnswers"];
            List<string[]> options = (List<string[]>)ViewState["Options"];
            int score = 0;
            for (int i = 0; i < correctAnswers.Count; i++)
            {
                RadioButtonList rblOptions = (RadioButtonList)FindControl("rblOptions" + (i + 1));
                if (rblOptions != null && rblOptions.SelectedValue == correctAnswers[i])
                {
                    score++;
                }
            }
            lblResult.Text = "Your score is: " + score + " out of " +
           correctAnswers.Count;
        }
    }
}
