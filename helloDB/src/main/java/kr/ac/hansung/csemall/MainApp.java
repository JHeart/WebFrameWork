package kr.ac.hansung.csemall;

import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MainApp {

	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = 
				new ClassPathXmlApplicationContext("kr/ac/hansung/conf/beans.xml");// empty container
																												
		
		OfferDAO offerDAO = (OfferDAO) context.getBean("offerDAO");
		
		System.out.println("The record count is" + offerDAO.getRowCount());
		
		List<Offer> offerList = offerDAO.getoffers();
		
		for(Offer offer: offerList)
			System.out.println(offer);
		
		Offer offer = new Offer();
		offer.setName("nyKim");
		offer.setEmail("nyKim@hansung.ac.kr");
		offer.setText("an instructor of spring");
		
		if(offerDAO.insert(offer)) {
			System.out.println("Object is inserted success");
		}else
			System.out.println("Object insert failed");
		
		
		offer = offerDAO.getoffer("nyKim");
		offer.setName("Namyun Kim");
		if(offerDAO.update(offer)) {
			System.out.println("Object is update success");
		}else
			System.out.println("Object update failed");
		
		
		offer = offerDAO.getoffer("Namyun Kim");
		System.out.println(offer);
		
		if(offerDAO.delete(offer.getId())) {
			System.out.println("Object is delete success");
		}else
					System.out.println("Object delete failed");
		
		context.close();
	}

}