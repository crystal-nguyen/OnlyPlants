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

            if(clickedButton.ID == "100")
            {
                // small monsterra
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
            else if(clickedButton.ID == "101")
            {
                // large fiddle leaff 
            }
            else if(clickedButton.ID == "102")
            {
                // small spider plant
            }
            else if(clickedButton.ID == "103")
            {
                // large aloe vera
            }
            else if(clickedButton.ID == "104")
            {
                // small peace lilly
            }
            else if(clickedButton.ID == "105")
            {
                // large snake plant
            }
            else if(clickedButton.ID == "106")
            {
                // small bromeliad
            }
            else if(clickedButton.ID == "107")
            {
                // small orchid
            }
            else if(clickedButton.ID == "1")
            {
                // dandelion seeds
            }
            else if(clickedButton.ID == "2")
            {
                // sunflower seeds
            }
            else if(clickedButton.ID == "3")
            {
                // zinnia seeds
            }
            else if(clickedButton.ID == "4")
            {
                // dahlia seeds   
            }
            else if(clickedButton.ID == "5")
            {
                // petunia seeds
            }
            else if(clickedButton.ID == "6")
            {
                // pansy seeds   
            }
            else if(clickedButton.ID == "7")
            {
                // calendula seeds   
            }
            else if(clickedButton.ID == "8")
            {
                // cornflower seeds
            }
            else if(clickedButton.ID == "200")
            {
                // small red pot
            }
            else if(clickedButton.ID == "201")
            {
                // large black pot
            }
            else if(clickedButton.ID == "202")
            {
                // large white pot
            }
            else if(clickedButton.ID == "203")
            {
                // large sky blue pot
            }
            else if(clickedButton.ID == "204")
            {
                // large baby pink pot
            }
            else if(clickedButton.ID == "205")
            {
                // small aubergine pot
            }
            else if(clickedButton.ID == "206")
            {
                // small clay pot
            }
            else if(clickedButton.ID == "207")
            {
                // small black glossy pot
            }
            else
            {
                return;
            }
        }
    }
}