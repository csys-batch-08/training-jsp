package com.chainsys.service;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.model.Product;

public class ProductService {
	public static List<Product> productList=new ArrayList();
	static
	{
		productList.add(new Product(101, "jasmin Plant","2 Weeks plant", 50));
		productList.add(new Product(101, "papaya Plant","1 month plant", 90));
		productList.add(new Product(101, "fig Plant","4 Weeks plant", 80));
		
	}
	public static List<Product> getProduct()
	{
		return productList;
	}
	public void addProduct(Product product)
	{
		productList.add(product);
	}
	public Product findProduct(String name)
	{
		Product resProduct=null;
		for(Product product:productList)
		{
			if(product.getName().equals(name))
			{
				resProduct=product;
				break;
			}
		}
		return resProduct;
	}

}
