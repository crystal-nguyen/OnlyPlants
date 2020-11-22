using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlyPlants
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void OnAddToCart(object sender, EventArgs e)
        {
            Button clickedButton = sender as Button;
            Product product = null;

            if(clickedButton.ID == "btnPlant1")
            {
                //-----------------------------------------------------------
                // need to create a product object by pulling information
                // from the database
                //-----------------------------------------------------------
                // product = new Product()

                
                //-----------------------------------------------------------
                // once the object has been created, need to update the
                // products list in the user's order
                //-----------------------------------------------------------
                // Application.Lock();
                // var globalOrder = Application["Order"];
                // globalOrder.ProductList.Add(product);
                // Application["Order"] = globalOrder;
                // Application.UnLock();
            }
            else if(clickedButton.ID == "btnPlant2")
            {

            }
            else if(clickedButton.ID == "btnPlant3")
            {
                
            }
            else if(clickedButton.ID == "btnPlant4")
            {
                
            }
            else if(clickedButton.ID == "btnPlant5")
            {
                
            }
            else if(clickedButton.ID == "btnPlant6")
            {
                
            }
            else if(clickedButton.ID == "btnPlant7")
            {
                
            }
            else if(clickedButton.ID == "btnPlant8")
            {
                
            }
            else if(clickedButton.ID == "btnSeeds1")
            {
                
            }
            else if(clickedButton.ID == "btnSeeds2")
            {
                
            }
            else if(clickedButton.ID == "btnSeeds3")
            {
                
            }
            else if(clickedButton.ID == "btnSeeds4")
            {
                
            }
            else if(clickedButton.ID == "btnSeeds5")
            {
                
            }
            else if(clickedButton.ID == "btnSeeds6")
            {
                
            }
            else if(clickedButton.ID == "btnSeeds7")
            {
                
            }
            else if(clickedButton.ID == "btnSeeds8")
            {
                
            }
            else if(clickedButton.ID == "btnPots1")
            {
                
            }
            else if(clickedButton.ID == "btnPots2")
            {
                
            }
            else if(clickedButton.ID == "btnPots3")
            {
                
            }
            else if(clickedButton.ID == "btnPots4")
            {
                
            }
            else if(clickedButton.ID == "btnPots5")
            {
                
            }
            else if(clickedButton.ID == "btnPots6")
            {
                
            }
            else if(clickedButton.ID == "btnPots7")
            {
                
            }
            else if(clickedButton.ID == "btnPots8")
            {
                
            }
            else
            {
                return;
            }
        }
    }
}