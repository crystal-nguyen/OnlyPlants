using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlyPlants
{
    public class HistoryOrder
    {
        private int orderid;
        private List<Product> items;
        private double total;

        public HistoryOrder()
        {
            this.items = new List<Product>();
        }

        public void addProduct(int quantity, string name)
        {
            this.items.Add(new Product(quantity, name));
        }

        public int OrderID { get => orderid; set => orderid = value; }
        public double Total { get => total; set => total = value; }
        public List<Product> Products { get => items; }
    }



}

    public partial class Product
    {
        private int quantity;
        private string item_name;

        public Product(int quantity, string name)
        {
            this.quantity = quantity;
            this.item_name = name;
        }

        public int Quantity { get => quantity; set => quantity = value; }
        public string ItemName { get => item_name; set => item_name = value; }
    }
