package dao;

import java.util.ArrayList;

import dto.Gym;
import dto.GymProduct;

public class GymProductRepository {
	
	private ArrayList<GymProduct> listOfGymProducts = new ArrayList<GymProduct>();
	
	public GymProductRepository() {
		GymProduct pt = new GymProduct("G0001","GP0001");
		pt.setPeriod(12);
		pt.setUnitPrice(990000);
		
		GymProduct pt2 = new GymProduct("G0001","GP0002");
		pt2.setPeriod(6);
		pt2.setUnitPrice(450000);
		
		listOfGymProducts.add(pt);
		listOfGymProducts.add(pt2);
		
	}
	
	public ArrayList<GymProduct> getAllGymProducts(){
		return listOfGymProducts;
	}
	
	public GymProduct getGymProductById(String gymId) {
		GymProduct gymById = null;
		
		for(int i=0; i<listOfGymProducts.size(); i++) {
			GymProduct product = listOfGymProducts.get(i);
			if(product != null && product.getGymId() != null && product.getGymId().equals(gymId)){
				gymById = product;
				break;
			}
		}
		return gymById;
	}
}