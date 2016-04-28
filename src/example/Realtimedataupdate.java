package example;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.json.JSONArray;
import org.json.JSONObject;
@WebListener
public class Realtimedataupdate implements ServletContextListener {
	static Connection conn = null;
	static Statement stmt = null;
	static BufferedWriter writer = null;
	
	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		Realtimedataupdate realdata=new  Realtimedataupdate();
		
		realdata.realtimeupdate();
//		 JSONObject jsonObject=null;		
//		try{
//			conn = DriverManager.getConnection("jdbc:mysql://localhost/stockhistory", "root", "root");
//			stmt = (Statement) conn.createStatement();
//			System.out.println("in");
//			while (true) {					
//					jsonObject=realdata.collectrealData();
//					if(jsonObject!=null){						
//						realdata.saverealData(jsonObject);
//						
//					}
//					//Wait for a minute before fetching data again
//					Thread.sleep(60000);					
//				}			
//				
//		}catch(Exception e){
//			e.printStackTrace();			
//		}	

	}

	    private ScheduledExecutorService scheduler;

	    @Override
	    public void contextInitialized(ServletContextEvent event) {
	        scheduler = Executors.newSingleThreadScheduledExecutor();
	        scheduler.scheduleAtFixedRate(new realtimeupdate(), 0, 1, TimeUnit.MINUTES);
	       }

	    @Override
	    public void contextDestroyed(ServletContextEvent event) {
	        scheduler.shutdownNow();
	    }

	

	
	public void realtimeupdate() {
		Realtimedataupdate realdata=new  Realtimedataupdate();
		 JSONObject jsonObject=null;		
		try{
			Class.forName("com.mysql.jdbc.Driver").newInstance(); 
			conn = DriverManager.getConnection("jdbc:mysql://localhost/Collect_Data", "root", "root");
			stmt = (Statement) conn.createStatement();
			System.out.println("in database");
		//	for(int i=0;i<10000;i++){
						
					jsonObject=realdata.collectrealData();
					if(jsonObject!=null){						
						realdata.saverealData(jsonObject);	
						}
					System.out.println("return to main jsp");
//					//Wait for a minute before fetching data again
			//		Thread.sleep(60000);
		//			}	
							
				
		}catch(Exception e){
			e.printStackTrace();			
		}	

	}
	private void saverealData(JSONObject jsonObject) throws IOException {		 
		System.out.println("in save to database");
		try {			
			JSONArray quotes = jsonObject.getJSONObject("query").getJSONObject("results").optJSONArray("quote");
			
			for (int i=0;i<quotes.length();i++) {
				JSONObject quote=(JSONObject) quotes.getJSONObject(i);
				String Symbol=quote.get("symbol").toString();
				Timestamp t=new Timestamp(System.currentTimeMillis());
				String t1=t.toString();			
				
				String Ask_Price=quote.get("Ask").toString();
				String Volume=quote.get("AverageDailyVolume").toString();				
				
				//String sql = "INSERT INTO History VALUES (\'"+quote.getString("Symbol")+"\', "+quote.getDouble("LastTradePriceOnly")+", DATE_FORMAT( NOW(),'%Y-%m-%d') ,  TIME_FORMAT(NOW(),'%H:%i:%s') , "+quote.getLong("Volume")+")";
				String sql = "INSERT INTO RealTime (Ticker_symbol, Time, Price, Volume) VALUES ('"+Symbol+"','"+t1+"','"+Ask_Price+"','"+Volume+"')";
				((java.sql.Statement) stmt).executeUpdate(sql);
			}
			
			System.out.println("Inserted");
		} catch (Exception e) {
			e.printStackTrace();
		} 
			//catch (SQLException e) {
//		}
			 
	}

	/**
	 * This method collects data from Yahoo API using YQL
	 * @return JSONObject
	 */
	private JSONObject collectrealData() {
		System.out.println("in collect");
		URL url;
		HttpURLConnection conn = null;
		JSONObject jsonObject=null;
		try {
			url = new URL("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.quotes%20where%20symbol%20in%20(%22YHOO%22%2C%22AMZN%22%2C%22GOOG%22%2C%22EBAY%22%2C%22BBY%22%2C%22FB%22%2C%22AAPL%22%2C%22RHT%22%2C%22BAC%22%2C%22GS%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback=");
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-Type", "application/json");
			BufferedReader br = new BufferedReader(new InputStreamReader((conn.getInputStream())));
			StringBuilder sb = new StringBuilder();
			String inputStr;
			//Read response to StringBuilder object
			while ((inputStr = br.readLine()) != null)
				sb.append(inputStr);
			br.close();
		       System.out.println("Done");
		       String temp=sb.toString();
			//Convert the String to JSON object
			jsonObject = new JSONObject(temp);
		} catch(Exception e){
			e.printStackTrace();
		} 
//		
		return jsonObject;
	}

}
 class realtimeupdate implements Runnable {

    @Override
    public void run() {
    	Realtimedataupdate rr=new Realtimedataupdate();
    	rr.realtimeupdate();
        // Do your daily job here.
    }

}


