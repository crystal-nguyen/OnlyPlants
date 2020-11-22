using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlyPlants
{
    public class Product
    {
        private int _quantity;
        private int _productID;
        private string _type;
        private float _price;
        private string _image;
        private string _name;

        public Product(int quantity, int productID, string type, float price, string image, string name)
        {
            _quantity = quantity;
            _productID = productID;
            _type = type;
            _price = price;
            _image = image;
            _name = name;
        }

        public int Quantity { get => _quantity; set => _quantity = value; }
        public int ProductID { get => _productID; set => _productID = value; }
        public string Type { get => _type; set => _type = value; }
        public float Price { get => _price; set => _price = value; }
        public string Image { get => _image; set => _image = value; }
        public string Name { get => _name; set => _name = value; }
    }
}