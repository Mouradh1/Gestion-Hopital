 <%@ include file = "menuchef.jsp" %>

    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">   Ajout Resum� De Sortie </a>
          </li>
      
        </ol>

        <!-- Icon Cards-->
        <div class="row">
      
          
     
        </div>

        <!-- Area Chart Example-->
        

        <!-- DataTables Example -->
        <div class="card mb-3">
          
           
        <div id="content">


	
		 
			<form id="form1" name="form1" method="get" action="/Gestion_Hopital/chef_ajout_resume">
    <table width="730" height="244" border="0">
      
    
           <div class="form-group">
                                            
                                                               <input class="form-control" type="hidden" id="id" name="id" value=" <% String id=request.getParameter("id");
                          out.print(id);
                          
                          %>"/>
                                        </div>
      
       <tr>
        <td><div align="left" class="style2"><strong>Resum�: </strong></div></td>
        <td>
          <div align="left" class="style2"><strong>
            <input name="resume" type="text" class="form-control" id="resume"   required="required"
            
            value=" <% String resume=request.getParameter("resume");
                          out.print(resume);
                          
                          %>"
            />
            </strong></div></td>
      </tr>
      
      
      
      
      
      
      
	  
	 
	  
	  
 
      <tr>
        <td><div align="left"><span class="style2"></span></div></td>
        <td><span class="style2"><strong>
          <label>          </label>
        </strong>          
            <label></label>
        </span>          <label><div align="left" class="style2"><strong>
            <input name="Submit" type="submit"   value="Ajouter R�sum�"  class="btn btn-primary"/>
          </strong></div>
        </label></td>
      </tr>
    </table>
  </form>
			
				
			
			
		 

          </div>
         
        </div>

      </div>
      <!-- /.container-fluid -->

      <!-- Sticky Footer -->
  

    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">�</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.jsp">Logout</a>
        </div>
      </div>
    </div>
  </div>

 
</body>

</html>
