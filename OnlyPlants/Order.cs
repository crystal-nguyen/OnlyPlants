using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace OnlyPlants
{
    public partial class Order
    {
        private int _quantity;
        private string _deliveryType;
        private int _orderID;
        private float _deliveryTime;
        private List<Product> _productList;

        public Order(int quantity, string deliveryType, int orderID, float deliveryTime, List<Product> productList)
        {
            _quantity = quantity;
            _deliveryType = deliveryType;
            _orderID = orderID;
            _deliveryTime = deliveryTime;
            _productList = productList;
        }

        public int Quantity { get => _quantity; set => _quantity = value; }
        public string DeliveryType { get => _deliveryType; set => _deliveryType = value; }
        public int OrderID { get => _orderID; set => _orderID = value; }
        public float DeliveryTime { get => _deliveryTime; set => _deliveryTime = value; }
        public List<Product> ProductList { get => _productList; set => _productList = value; }
    }
}