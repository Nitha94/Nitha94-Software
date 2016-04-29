

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.api.client.auth.oauth2.AuthorizationCodeRequestUrl;
import com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest;
import com.google.api.client.auth.oauth2.ClientParametersAuthentication;
//import com.google.api.client.auth.oauth2.TokenRequest;
import com.google.api.client.auth.oauth2.TokenResponse;
import com.google.api.client.auth.oauth2.TokenResponseException;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson.JacksonFactory;
import com.google.api.services.plus.Plus;
import com.google.api.services.plus.model.Person;
import com.sun.webkit.network.CookieManager;

/**
 * Servlet implementation class OAuth2Servlet
 */
@WebServlet("/OAuth2Servlet")
public class OAuth2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	class Constants {
	    public final static String OAUTH_REDIRECT_URL = "http://localhost:8081/Software/OAuth2Servlet";
	    public final static String OAUTH_GOOGLE_AUTH_URL = "https://accounts.google.com/o/oauth2/auth";
	    public final static String OAUTH_GOOGLE_TOKEN_URL = "https://www.googleapis.com/oauth2/v3/token";

	    public final static String OAUTH_CLIENT_ID = "272050716689-qkhu8o76f6n0r0pum1hoa9kdhnop1p6h.apps.googleusercontent.com";
	    public final static String OAUTH_CLIENT_SECRET = "sXMkA0npySrjVUWl64u8fsy7";
	    public final static String OAUTH_SCOPES = "https://www.googleapis.com/auth/plus.profile.emails.read";
	    
	    private Constants(){
	    	throw new AssertionError();
	    }
	    
	}
	
	 /**
     * @see HttpServlet#HttpServlet()
     */
    public OAuth2Servlet() {
        super();
        // TODO Auto-generated constructor stu
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		 HttpSession session = request.getSession();
	        
			if (request.getParameter("code") != null) {
			    String code = request.getParameter("code");
			    
			    try {
		            HttpTransport httpTransport = new NetHttpTransport();
		            JsonFactory jsonFactory = new JacksonFactory();
		            
		            
		            TokenResponse tokenResponse = new AuthorizationCodeTokenRequest(httpTransport, jsonFactory, new GenericUrl(Constants.OAUTH_GOOGLE_TOKEN_URL), code).setRedirectUri(Constants.OAUTH_REDIRECT_URL)
		                .setClientAuthentication(new 
		                        ClientParametersAuthentication(
		                                Constants.OAUTH_CLIENT_ID, 
		                                Constants.OAUTH_CLIENT_SECRET)).execute();
		            //.setAccessType("offline").setApprovalPrompt("force").build()
		            String accessToken = tokenResponse.getAccessToken();
		            //Person person = new Person();
		            
		            Person person =  new Plus.Builder(httpTransport, jsonFactory, null)
		                    .setApplicationName("Software").build().people().get("me")
		                    .setOauthToken(accessToken).execute();
//		            Plus plus = new Plus.Builder(httpTransport,jsonFactory,null).setApplicationName("MyFirstWebApp").build();
//		            Person person = plus.people().get("me").execute();
		            
		            
		            session.setAttribute("email", person.getEmails().get(0).getValue());
		            session.setAttribute("name", person.getDisplayName());
			    } catch (TokenResponseException e) {
		            if (e.getDetails() != null) {
		                System.err.println("Error: " + e.getDetails().getError());
		                if (e.getDetails().getErrorDescription() != null) {
		                    System.err.println(e.getDetails().getErrorDescription());
		                }
		                if (e.getDetails().getErrorUri() != null) {
		                    System.err.println(e.getDetails().getErrorUri());
		                }
		            } else {
		                System.err.println(e.getMessage());
		            }
		        } catch (IOException e) {
		            System.err.println(e.getMessage());
		        }
			}
			
			 String name = (String)session.getAttribute("name");
		        String email = (String)session.getAttribute("email");
			    
			    if (email == null) {
			        List<String> scopes = new ArrayList<String>();
		            scopes.add(Constants.OAUTH_SCOPES);
		            
		            String authUrl = new AuthorizationCodeRequestUrl(
		                    Constants.OAUTH_GOOGLE_AUTH_URL, 
		                    Constants.OAUTH_CLIENT_ID)
		                    .setRedirectUri(Constants.OAUTH_REDIRECT_URL)
		                    .setScopes(scopes)
		                    .build();
		            
		            response.sendRedirect(authUrl);
			    }
			    else {
			        response.getWriter().println(name + " [" + email + "]");
			        request.getRequestDispatcher("bayesiansubmit.jsp").forward(request,response);
			        
//			       response.setContentType("text/html");
//					PrintWriter out = response.getWriter();
//					
//					out.print("<html><body>");
//					out.println("Hello Servelet");
//		            out.print("</body></html>");
//		            out.println("<html><head>");
//
//		            RequestDispatcher dispatcher = request.getRequestDispatcher(
//		                "/WEB-INF/Logout.jsp");
//
//		            dispatcher.include(request, response);

		            //out.println("<title>Logout</title></head><body>");
					
				    //out.println("<img src="https://mail.google.com/mail/u/0/?logout&hl=en"/>");
			    }
			}// doGet() done

//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
