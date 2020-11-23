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
        private List<int> quantityList;
        

        public Cart()
        {
            orderID = 0;
            prodList = new List<int>();
            quantityList = new List<int>();

        }

        public int OrderID { get => orderID; set => orderID = value; }
        public List<int> ProductList { get => prodList; set => prodList = value; }
        public List<int> QuantityList { get => prodList; set => prodList = value; }

    }
}