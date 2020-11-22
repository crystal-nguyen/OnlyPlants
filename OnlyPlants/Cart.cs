using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlyPlants
{
    public partial class Cart
    {
        private int orderID;
        private List<int> prodList;
        

        public Cart()
        {
            orderID = 0;
            prodList = new List<int>();

        }

        public int OrderID { get => orderID; set => orderID = value; }
        public List<int> ProductList { get => prodList; set => prodList = value; }
    }
}