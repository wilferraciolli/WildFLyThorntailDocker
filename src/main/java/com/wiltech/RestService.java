package com.wiltech;


import javax.ws.rs.Path;
import javax.ws.rs.core.Response;
import javax.ws.rs.GET;
import javax.ws.rs.Produces;

@Path("api/test")
public class RestService {

    @GET
    @Produces("text/plain")
    public Response doGet() {

        return Response.ok("Hello from Thorntail!").build();
    }
}
