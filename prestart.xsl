<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
<html>
<script src="js/jquery-2.1.3.min.js" type="text/javascript"></script>
<script src="js/jquery.mobile-1.4.5.min.js" type="text/javascript"></script>
<script src="cordova.js" type="text/javascript"></script>
<link href="css/jquery.mobile-1.4.5.min.css" rel="stylesheet" type="text/css"/>
<link href="checklist.css" rel="stylesheet" type="text/css"/>

  <body>
  <div data-role="page" id="menu" data-add-back-btn="true">
  <div data-role="header">
    <h1>Checklist</h1>
  </div>

  <div data-role="main" class="ui-content">
    
    
      <xsl:for-each select="checklist/phase">
      	<div data-role="collapsible">
        <h2><xsl:value-of select="phasetitle"/><img src = "logo png.png" class = "capimg"></img></h2>
            <xsl:for-each select="stage">
            <div data-role="collapsible">
                <h3 class="txt_centre"><xsl:value-of select="stagetitle"/><img src = "logo png.png" class = "capimg"></img>
                <img onclick="myFunction()" src="rsz_collapse.png" style="width: 5%; height: 5%; float: right;  text-align: center"></img></h3>
                <form method="post" id="{formnum}">
                	
                <!--<xsl:value-of select="stagenotes" disable-output-escaping="yes"/>-->
                
                <table style="width:100%" id="checklist" >
                
                  <colgroup>
                              
                              <col style="width:13%" />
                              <col style="width:4%" />
                              <col class="checklist-first" style="width:21%" />
                              <col style="width:14%" />
                              <col style="width:41%" />
                              <col style="width:7%" />
                              
                            
                              <!--<col style="width:10%" />
                              <col style="width:8%" />
                              <col class="checklist-first" style="width:26%" />
                              <col style="width:4%" />
                              <col style="width:46%" />
                              <col style="width:10%" />-->
                           </colgroup>
                
                    <xsl:choose> 
                    	
                    	
                    <xsl:when test="stagetitle = 'LIMITATIONS' or stagetitle = 'PRE-LANDING CHECKS'">
                     </xsl:when>
                     
                     <xsl:when test="stagetitle = 'PRE START'">
                     	
                     	<tr >
                              <td style="background-color: #ffc926">
                                 <img id="hide" src="rsz_mands_30_50.png" onclick="changeImage(this)"/>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926;  ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform1()" src="reset_50.png" />
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img id="hide7" src="rsz_recycling_30_50.png" onclick="changeImage2(this)"/></td>
                        </tr>
                     	
                     	
                           
                     </xsl:when>
                     
                     <xsl:when test="stagetitle = 'START'">
                     	   
                     	   
                     	   <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926;  ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform2()" src="reset_50.png" />
                              </td>
                              
                              <td style="background-color: #ffc926;">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" /></td>
                          </tr>
                     	   

                     </xsl:when>
                     
                     
                     
                     <xsl:when test="stagetitle = 'AFTER START'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform3()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                     
                     
                     <xsl:when test="stagetitle = 'ENGINE RUN-UP'">
                     	   
                     	   
                     	   <tr >
                              <td style="background-color: #ffc926">
                                 <img id="hide2" src="rsz_mands_30_50.png" onclick="changeImage(this)"/>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform4()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926;">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="NOTE: NOT REQUIRED IF FLIGHT IS BY SAME CREW IN SAME AIRCRAFT ON THE SAME DAY" src="inf_50.png" /></td>
                        </tr>
                     	   
                     	
                     </xsl:when>
                     
                     <xsl:when test="stagetitle = 'PRE-LIFTOFF CHECKS | PRE-LANDING CHECKS'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img id="hide3" src="rsz_mands_30_50.png" onclick="changeImage(this)"/>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform5()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926;">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" /></td>
                        </tr>
                     	   
                     	   
                     </xsl:when>
                     
                     <xsl:when test="stagetitle = 'HOVER CHECKS'">
                     	   
                     	   
                     	   <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform6()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" /></td>
                          </tr>
                     	   
                     	 
                     </xsl:when>
                     
                     
                     
                     
                     
                     
                     
                     
                     <xsl:when test="stagetitle = 'INSTRUMENT TAXI CHECKS'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform7()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" /></td>
                          </tr>
                     	   
                     	  
                     	
                     </xsl:when>
                     
                    <xsl:when test="stagetitle = 'PWPTEM - PRIOR TO TAKE-OFF BRIEF'">
                     	   
                     	   <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926;  ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform8()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img id="hide8" src="rsz_recycling_30_50.png" onclick="changeImage2(this)" /></td>
                        </tr>
                     	   
                     	
                     </xsl:when>
                    
                    <xsl:when test="stagetitle = 'PSWATP - CONFINED AREA | UNPREP HLS CHECK'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform9()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" /></td>
                          </tr>
                     	
               
                     </xsl:when>
                    
                    
                    <xsl:when test="stagetitle = 'FIVE T`s - WAYPOINT / TURNING CHECK'">
                     	   
                     	   
                     	   <tr>
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform10()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                     <xsl:when test="stagetitle = 'CLEAROFF CHECK - DEPARTURE AND ENROUTE'">
                     	   
                     	   
                     	   
                     	   
                     	   <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform11()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" /></td>
                          </tr>
                     	   
                     	   
                     	
                     </xsl:when>
                     
                     <xsl:when test="stagetitle = 'SHUTDOWN CHECKS'">
                     	   
                     	   <tr >
                              <td style="background-color: #ffc926">
                                  <img id="hide5" src="rsz_mands_30_50.png" onclick="changeImage(this)"/>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926;  ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform13()" src="reset_50.png" />
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" /></td>
                        </tr>
                     
                     	
                     </xsl:when>
                     
                     
                     <xsl:when test="stagetitle = 'PRE FLIGHT INS - GENERAL INSPECTION'">
                     	   
                     	   
                     	   <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform15()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="This is a mandatory inspection of the aircraft prior to the first flight of the day and must be signed off by a qualified pilot in the Maintenance Release." src="inf_50.png" /></td>
                          </tr>
                     	   
                     	 
                     	 
                     </xsl:when>
                     
                     
                     <xsl:when test="stagetitle = 'PRE FLIGHT INS - COCKPIT INS AND FUEL DRAIN'">
                     	
                    <tr >
                              <td style="background-color: #ffc926">
                                 <img id="hide16" src="rsz_mands_30_50.png" onclick="changeImage2(this)" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform16()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926;">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="This is a mandatory inspection of the aircraft prior to the first flight of the day and must be signed off by a qualified pilot in the Maintenance Release." src="inf_50.png" /></td>
                        </tr>
                     	
                           
                     </xsl:when>
                     
                     
                     <xsl:when test="stagetitle = 'EXTERIOR INS - FUSELAGE'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform17()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="This is a mandatory inspection of the aircraft prior to the first flight of the day and must be signed off by a qualified pilot in the Maintenance Release." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                     
                     <xsl:when test="stagetitle = 'EXTERIOR INS - FUSELAGE RIGHT SIDE'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform18()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="This is a mandatory inspection of the aircraft prior to the first flight of the day and must be signed off by a qualified pilot in the Maintenance Release." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                     <xsl:when test="stagetitle = 'EXTERIOR INS - TRANSMISSION AREA RIGHT SIDE'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform19()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="This is a mandatory inspection of the aircraft prior to the first flight of the day and must be signed off by a qualified pilot in the Maintenance Release." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                    
                     <xsl:when test="stagetitle = 'EXTERIOR INS - AIR INTAKE AREA RIGHT SIDE'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform20()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="This is a mandatory inspection of the aircraft prior to the first flight of the day and must be signed off by a qualified pilot in the Maintenance Release." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                      <xsl:when test="stagetitle = 'EXTERIOR INS - ENGINE BAY RIGHT SIDE'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform21()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="This is a mandatory inspection of the aircraft prior to the first flight of the day and must be signed off by a qualified pilot in the Maintenance Release." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                     
                     <xsl:when test="stagetitle = 'EXTERIOR INS - TAILBOOM RIGHT SIDE'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform22()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="This is a mandatory inspection of the aircraft prior to the first flight of the day and must be signed off by a qualified pilot in the Maintenance Release." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                     <xsl:when test="stagetitle = 'EXTERIOR INS - TAILBOOM LEFT SIDE'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform23()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="This is a mandatory inspection of the aircraft prior to the first flight of the day and must be signed off by a qualified pilot in the Maintenance Release." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                     
                     <xsl:when test="stagetitle = 'EXTERIOR INS - FUSELAGE LEFT SIDE'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform24()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="This is a mandatory inspection of the aircraft prior to the first flight of the day and must be signed off by a qualified pilot in the Maintenance Release." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                      <xsl:when test="stagetitle = 'EXTERIOR INS - ENGINE BAY LEFT SIDE'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform25()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="This is a mandatory inspection of the aircraft prior to the first flight of the day and must be signed off by a qualified pilot in the Maintenance Release." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                     <xsl:when test="stagetitle = 'EXTERIOR INS - AIR INTAKE AREA LEFT SIDE'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform26()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="This is a mandatory inspection of the aircraft prior to the first flight of the day and must be signed off by a qualified pilot in the Maintenance Release." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                     <xsl:when test="stagetitle = 'EXTERIOR INS - TRANSMISSION LEFT SIDE'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform27()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="This is a mandatory inspection of the aircraft prior to the first flight of the day and must be signed off by a qualified pilot in the Maintenance Release." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                     <xsl:when test="stagetitle = 'EXTERIOR INS - FUSELAGE LEFT SIDE'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform28()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="This is a mandatory inspection of the aircraft prior to the first flight of the day and must be signed off by a qualified pilot in the Maintenance Release." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                     
                         <xsl:when test="stagetitle = 'EXTERIOR INS - FUSELAGE FRONT'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform29()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="This is a mandatory inspection of the aircraft prior to the first flight of the day and must be signed off by a qualified pilot in the Maintenance Release." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                     <xsl:when test="stagetitle = 'POST FLIGHT INSPECTION'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform30()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="The Post Flight Inspection is done immediately at the end of a flight and prior to returning to the Operations Desk.  It is to ensure that the helicopter has been left in a serviceable condition ready for the next flight by another crew." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                     <xsl:when test="stagetitle = 'TURN AROUND INSPECTION'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform31()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="The turn-around inspection is an abbreviated Pre-flight inspection. It is to be carried out on subsequent flights on the same day when the full Daily Pre-flight inspection has already been completed. In this case the helicopter should also have been subjected to a Post Flight inspection.
                                 	 The purpose of this check is to confirm that the aircraft is still flight ready and that the oil and fuel levels are as stated." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                     
                     <xsl:when test="stagetitle = 'TURN AROUND - COCKPIT INSPECTION'">
                     	
                    <tr >
                              <td style="background-color: #ffc926">
                                 <img id="hide32" src="rsz_mands_30_50.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform32()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926;">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="The turn-around inspection is an abbreviated Pre-flight inspection. It is to be carried out on subsequent flights on the same day when the full Daily Pre-flight inspection has already been completed. In this case the helicopter should also have been subjected to a Post Flight inspection. 
                                 	The purpose of this check is to confirm that the aircraft is still flight ready and that the oil and fuel levels are as stated." src="inf_50.png" /></td>
                        </tr>
                     	
                           
                     </xsl:when>
                     
                     <xsl:when test="stagetitle = 'TURN AROUND - LEVELS CHECK'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform33()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="The turn-around inspection is an abbreviated Pre-flight inspection. It is to be carried out on subsequent flights on the same day when the full Daily Pre-flight inspection has already been completed. In this case the helicopter should also have been subjected to a Post Flight inspection.
                                 	 The purpose of this check is to confirm that the aircraft is still flight ready and that the oil and fuel levels are as stated." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                     <xsl:when test="stagetitle = 'TURN AROUND - ENGINE CHECK'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform34()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="The turn-around inspection is an abbreviated Pre-flight inspection. It is to be carried out on subsequent flights on the same day when the full Daily Pre-flight inspection has already been completed. In this case the helicopter should also have been subjected to a Post Flight inspection.
                                 	 The purpose of this check is to confirm that the aircraft is still flight ready and that the oil and fuel levels are as stated." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                     
                     <xsl:when test="stagetitle = 'TURN AROUND - AIR INLET CHECK'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform35()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="The turn-around inspection is an abbreviated Pre-flight inspection. It is to be carried out on subsequent flights on the same day when the full Daily Pre-flight inspection has already been completed. In this case the helicopter should also have been subjected to a Post Flight inspection.
                                 	 The purpose of this check is to confirm that the aircraft is still flight ready and that the oil and fuel levels are as stated." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                     
                     
                     
                     
                     <xsl:when test="stagetitle = 'TURN AROUND - FUSELAGE FRONT'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform36()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="The turn-around inspection is an abbreviated Pre-flight inspection. It is to be carried out on subsequent flights on the same day when the full Daily Pre-flight inspection has already been completed. In this case the helicopter should also have been subjected to a Post Flight inspection.
                                 	 The purpose of this check is to confirm that the aircraft is still flight ready and that the oil and fuel levels are as stated." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                     <xsl:when test="stagetitle = 'COMPRESSOR RINSE - PREPARATION'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform37()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="At least once a week the engine must receive a compressor rinse by the aircrew prior to the first flight of the day. 
                                 	This will be scheduled in as part of your sortie by the instructor. A compressor rinse will require at least two (2) pilots.
                                 	  One pilot will be responsible for managing the starter motor from inside the cockpit.  The second pilot will be responsible for managing the rinse cart and
                                 	   controlling the tap that allows water to flow into the compressor. The main rotor blades may remain tied down during the compressor wash.
                                          " src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                     <xsl:when test="stagetitle = 'COMPRESSOR RINSE - PREPARATION'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform38()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="At least once a week the engine must receive a compressor rinse by the aircrew prior to the first flight of the day. 
                                 	This will be scheduled in as part of your sortie by the instructor. A compressor rinse will require at least two (2) pilots.
                                 	  One pilot will be responsible for managing the starter motor from inside the cockpit.  The second pilot will be responsible for managing the rinse cart and
                                 	   controlling the tap that allows water to flow into the compressor. The main rotor blades may remain tied down during the compressor wash.
                                          " src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                    
                    <xsl:when test="stagetitle = 'COMPRESSOR RINSE - PILOT IN THE COCKPIT'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform39()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="At least once a week the engine must receive a compressor rinse by the aircrew prior to the first flight of the day. 
                                 	This will be scheduled in as part of your sortie by the instructor. A compressor rinse will require at least two (2) pilots.
                                 	  One pilot will be responsible for managing the starter motor from inside the cockpit.  The second pilot will be responsible for managing the rinse cart and
                                 	   controlling the tap that allows water to flow into the compressor. The main rotor blades may remain tied down during the compressor wash.
                                          " src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                    
                    
           <xsl:when test="stagetitle = 'ENGINE START &amp; STOP PROCS - BEFORE START CHECKS'">
                     	
                     	<tr >
                              <td style="background-color: #ffc926">
                                 <img id="hide40" src="rsz_mands_30_50.png" onclick="changeImage(this)"/>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926;  ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform40()" src="reset_50.png" />
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img id="hide40a" src="rsz_recycling_30_50.png" onclick="changeImage2(this)" /></td>
                        </tr>
                     	
                     	
                           
                     </xsl:when>
                    
                   
                    <xsl:when test="stagetitle = 'ABORT START PRECEDURE REVISION'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform41()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img rel="tooltip" title="To be verbally confirmed between the cockpit crew prior to engine start at the discretion of the instructor or whenever the pilot wants to be reminded of the procedure." src="inf_50.png" /></td>
                          </tr>
                     	   
                     
                     </xsl:when>
                     
                   <xsl:when test="stagetitle = 'ENGINE STARTING'">
                     	   
                     	   <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926;  ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform42()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img id="hide42" src="rsz_recycling_30_50.png" onclick="changeImage2(this)" /></td>
                        </tr>
                     	   
                     	
                     </xsl:when>
                   
                   <xsl:when test="stagetitle = 'AFTER ENGINE START'">
                     	   
                     	   
                     	   <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926;  ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform43()" src="reset_50.png" />
                              </td>
                              
                              <td style="background-color: #ffc926;">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img srel="tooltip" title="When conducting multiple lift-offs and landings and multiple circuits, the normal Engine Start and Stop Procedures may be abbreviated." src="inf_50.png" /></td>
                          </tr>
                     	   

                     </xsl:when>
                   
                   
                   <xsl:when test="stagetitle = 'ENGINE RUN UP CHECK'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img id="hide44" src="rsz_mands_30_50.png" onclick="changeImage(this)"/>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform44()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926;">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" /></td>
                        </tr>
                     	   
                     	   
                     </xsl:when>
                   
                   <xsl:when test="stagetitle = 'ENGINE SHUTDOWN CHECKS'">
                     	   
                     	   
                     	    <tr >
                              <td style="background-color: #ffc926">
                                 <img id="hide45" src="rsz_mands_30_50.png" onclick="changeImage(this)"/>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform45()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926;">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" /></td>
                        </tr>
                     	   
                     	   
                     </xsl:when>
                   
                   
                   <xsl:when test="stagetitle = 'NORMAL FLIGHT CHECKS'">
                     	
                     	<tr >
                              <td style="background-color: #ffc926">
                                 <img id="hide46" src="rsz_mands_30_50.png" onclick="changeImage(this)"/>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926;  ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform46()" src="reset_50.png" />
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img id="hide46a" src="rsz_recycling_30_50.png" onclick="changeImage2(this)"/></td>
                        </tr>
                     	
                     	
                           
                     </xsl:when>
                   
                   
                   
                   <xsl:when test="stagetitle = 'HOVER CHECKS  '">
                      
                     	   <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>Nos</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform47()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" /></td>
                          </tr>
                     	   
                     	   
                     	
                     </xsl:when>
                     
                   
                    <xsl:when test="stagetitle = 'INSTRUMENT TAXI CHECKS  '">
                      
                     	   <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform48()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" /></td>
                          </tr>
                     	   
                     	   
                     	
                     </xsl:when>
                   
                   
                         <xsl:when test="stagetitle = 'PRE DEPARTURE BRIEF'">
                     	   
                     	   <tr >
                              <td style="background-color: #ffc926">
                                 <img srel="tooltip" title="This is a general departure brief and plan between the crew using the acronym PWPTEM pronounced “Pow-tem” prior to take-off." src="inf_50.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926;  ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform49()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img id="hide49" src="rsz_recycling_30_50.png" onclick="changeImage2(this)" /></td>
                        </tr>
                     	   
                     	
                     </xsl:when>
                   
                   
                    <xsl:when test="stagetitle = 'DEPARTURE AND ENROUTE CHECK'">
                      
                     	   <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform50()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img srel="tooltip" title="Using the acronym “CLEAROFF” this is required on departure, enroute or any time the pilot decides to conduct a cross check of progress" src="inf_50.png" /></td>
                          </tr>
                     	   
                      </xsl:when>
                   
                   
                    <xsl:when test="stagetitle = 'INSTRUMENT PRE-DEPARTURE CHECKS'">
                      
                     	   <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform51()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img srel="tooltip" title="Because instrument flying at Becker Helicopters is done as a multi crew sortie, the Non Flying Pilot (NFP)
                                 	 will make the “challenge” by reading out the ITEM.  The crew will then together conduct actions as appropriate but the FP will give 
                                 	 the “response” by stating what the ACTION was.  In most cases the NFP will be required to do the actions allowing the FP to fly but
                                 	  the FP will have to give confirmation that the task has been completed." src="inf_50.png" /></td>
                          </tr>
                     	   
                   </xsl:when>
                   
                   <xsl:when test="stagetitle = 'DEPARTURE AND ENROUTE CHECK  '">
                      
                     	   <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform52()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img srel="tooltip" title="Using the acronym “CLEAROFF” this is required on departure, enroute or any time the pilot decides to conduct a cross check of progress." src="inf_50.png" /></td>
                          </tr>
                     	   
                   </xsl:when>
                   
                   
                   <xsl:when test="stagetitle = 'INSTRUMENT CHECKLIST INBOUND - BEFORE 30NM INBOUND TO IAF'">
                     	   
                     	   
                     	   <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform53()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" /></td>
                          </tr>
                     	   
                     	 
                     </xsl:when>
                     
                   
                   <xsl:when test="stagetitle = 'INSTRUMENT CHECKLIST INBOUND - BY 25NM INBOUND TO IAF'">
                     	   
                     	   
                     	   <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform54()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" /></td>
                          </tr>
                     	   
                     	 
                     </xsl:when>
                     
                                <xsl:when test="stagetitle = 'INSTRUMENT CHECKLIST INBOUND - BY 15NM INBOUND TO IAF'">
                     	   
                     	   
                     	   <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform55()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" /></td>
                          </tr>
                     	   
                     	 
                     </xsl:when>
                   
                   <xsl:when test="stagetitle = 'INSTRUMENT APPROACH CHECKLIST - 10NM INBOUND TO IAF'">
                     	   
                     	   
                     	   <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform56()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" /></td>
                          </tr>
                     	   
                     	 
                     </xsl:when>
                   
                   <xsl:when test="stagetitle = 'INSTRUMENT APPROACH CHECKLIST - 5NM INBOUND TO IAF'">
                     	   
                     	   
                     	   <tr >
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" />
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <h3>No</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Item</h3>
                              </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <img onclick="resetform56()" src="reset_50.png" />
                             </td>
                              
                              <td style="background-color: #ffc926; ">
                                 <h3>Action</h3>
                              </td>
                              
                              <td style="background-color: #ffc926">
                                 <img src="rsz_trans2020.png" /></td>
                          </tr>
                     	   
                     	 
                     </xsl:when>
                   
                    <xsl:otherwise>
                           <th align="center" scope="col" style="background-color: #ffc926; "><img id="hide" src="rsz_mands_30.png" /></th>
                           <th scope="col" style="background-color: #ffc926; "><h3>No</h3></th>
                           <th scope="col" style="background-color: #ffc926; "><h3>Item</h3></th>
                           <th scope="col" style="background-color: #ffc926; "><img src="reset.png"   onclick = "resetform()"></img></th>
                           <th scope="col" style="background-color: #ffc926; "><h3>Action</h3></th>
                           <th scope="col" align="center" style="background-color: #ffc926;"><img id="hide1" src="rsz_recycling_30.png" /></th>
                    </xsl:otherwise>
               
                    </xsl:choose>
                    
                  
                  
                 </table>
                
                

          
                
                
                
                <table style="width:100%" id="checklist" summary="Checklist">
                 <colgroup>
                              <col style="width:15%" />
                              <col style="width:2%" />
                              <col class="checklist-first" style="width:21%" />
                              <col style="width:14%" />
                              <col style="width:41%" />
                              <col style="width:7%" />
                           </colgroup>
               
                  
                  <!--     Start of display steps   -->
                  
            
                  
                  <tbody><!-- Dialogue Page if required <a href="#pagetwo">Go to Dialog Page</a>-->
                  <xsl:for-each select="step">
                    
  
                  <tr class="{numcol}">
                  	
                    	 
                      
                      <!--  Column 1 NIFR/ Multipul Liftoffs   -->
                      <xsl:choose> 
               
                       <xsl:when test="numcol = '60'">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="trans5050.png" /></td>
                       </xsl:when>
               
               
                      <xsl:when test="numcol = '1' or numcol = '101' or numcol = '102' or numcol = '103'">
                        <td class="checklist-1-border" style="background-color:#4682B4"><img src="rsz_mands_30.png" title="INDICATES NIFR (NOT DAY)" rel="tooltip"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 2">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="trans5050.png" /></td>
                       </xsl:when>
                      
                      <xsl:when test="numcol = '3' or numcol = '301' or numcol = '302'">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="rsz_recycling_30.png" title="ABBREVIATED CHECKS DURING MULTIPUL LIFT-OFFS, LANDINGS AND CIRCUITS" rel="tooltip"/></td>
                      </xsl:when>a
                      
                      <xsl:when test="numcol = 4">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="h.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 5">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="e.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 6">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="f.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 7">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="r.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 8">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="p.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 9">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="w.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 10">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="t.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 11">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="m.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 12">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="s.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 13">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="a.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 14">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="c.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 15">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="l.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 16">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="o.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 17">
                        <td class="checklist-1-border" style="background-color:#FF8C00"></td>
                      </xsl:when>
                      
                      <!-- 12 - Multi + Letter P -->
                      
                      <xsl:when test="numcol = '50' or numcol = '501'">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="rsz_recycling_30.png"/><img src="p.png"/></td>
                      </xsl:when>
                      
                       <!-- 12 - Multi + Letter W -->
                      <xsl:when test="numcol = '51' or numcol = '511'">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="rsz_recycling_30.png"/><img src="w.png"/></td>
                      </xsl:when>
                      
                      
                      <!-- 13 - Multi + Letter E -->
                      <xsl:when test="numcol = '52' or numcol = '512'">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="rsz_recycling_30.png"/><img src="e.png"/></td>
                      </xsl:when>
                      
                      
                      <!-- 14 - Multi + Letter F -->
                      <xsl:when test="numcol = '53' or numcol = '513'">
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="rsz_recycling_30.png"/><img src="f.png"/></td>
                      </xsl:when>
                      
                      
                      <xsl:otherwise>
                        <td class="white-bar"></td>
                      </xsl:otherwise>
               
                      </xsl:choose>
               
               
                      <!--  Column 2 Number Color   -->
                  
                      <xsl:choose>
                    
                      <xsl:when test="icon = 2">
                        <td style="background-color:#4682B4"><xsl:value-of select="number"/></td>
                      </xsl:when>
                   
                      <xsl:when test="icon = 3">
                        <td style="background-color:#FF8C00"></td>
                      </xsl:when>
                   
                   
                      <xsl:otherwise>
                        <td style="background-color:#FF8C00"><xsl:value-of select="number"/></td>
                      </xsl:otherwise>
                      
                      </xsl:choose>
                      
                      <!--  Column 3 Item Color   -->	
                      
                      <xsl:choose>
                      
                      <xsl:when test="icon = 2">
                        <td style="background-color:#4682B4"><xsl:value-of select="item"/></td>
                      </xsl:when>
          
                      <xsl:otherwise>
                        <td style="background-color:#FF8C00"><xsl:value-of select="item"/></td>
                      </xsl:otherwise>
                      
                      </xsl:choose>
                       
                      
                      <!--  Column 4 Action  -->	
                      
                      <xsl:choose>
                      	
                      <xsl:when test="icon = 2">
                        <td style="background-color:#4682B4"><input type="checkbox" name="checklist" /></td>
                      </xsl:when>
                      
                      <xsl:when test="icon = 3">
                        <td style="background-color:#FF8C00"></td>
                      </xsl:when>
                      
                      <xsl:otherwise>
                        <td style="background-color:#FF8C00"><input type="checkbox" name="checklist" /></td>
                      </xsl:otherwise>
                      
                      </xsl:choose>
                
                      <!--  Column 5 Action  -->	
                      
                      <xsl:choose>
                      	
                      <xsl:when test="icon = 1">
                      <td style="background-color:#FF8C00"><xsl:value-of select="action" disable-output-escaping="yes"/>
                      
                      <xsl:if test="action2 !=''">
                      <p><xsl:value-of select="action2"/></p>
                      </xsl:if>
                      
                      <xsl:if test="action3 !=''">
                      <p><xsl:value-of select="action3"/></p>
                      </xsl:if>
                      
                      <xsl:if test="action4 !=''">
                      <p><xsl:value-of select="action4"/></p>
                      </xsl:if>
                      
                      <xsl:if test="action5 !=''">
                      <p><xsl:value-of select="action5"/></p>
                      </xsl:if>
                      
                      <xsl:if test="action6 !=''">
                      <p><xsl:value-of select="action6"/></p>
                      </xsl:if>
                      
                      <xsl:if test="action7 !=''">
                      <p><xsl:value-of select="action7"/></p>
                      </xsl:if>
                      
                      <xsl:if test="action8 !=''">
                      <p><xsl:value-of select="action8"/></p>
                      </xsl:if>
                      
                      <xsl:if test="action9 !=''">
                      <p><xsl:value-of select="action9"/></p>
                      </xsl:if>
                      
                      <xsl:if test="action10 !=''">
                      <p><xsl:value-of select="action10"/></p>
                      </xsl:if>
                      
                      <xsl:if test="action11 !=''">
                      <p><xsl:value-of select="action11"/></p>
                      </xsl:if>
                      
                      <xsl:if test="action12 !=''">
                      <p><xsl:value-of select="action12"/></p>
                      </xsl:if>
                      
                      <xsl:if test="action13 !=''">
                      <p><xsl:value-of select="action13"/></p>
                      </xsl:if>
                      
                      <xsl:if test="action14 !=''">
                      <p><xsl:value-of select="action14"/></p>
                      </xsl:if>
                      	
                      <xsl:if test="action15 !=''">
                      <p><xsl:value-of select="action15"/></p>
                      </xsl:if>
                      
                      
                      
                      	<xsl:if test="warning !=''">
                       <p class="warning"><img src = "warning.png" class = "capimg"></img><xsl:value-of select="warning" /></p>
                        </xsl:if>
                      
                      <xsl:if test="warning2 !=''">
                       <p class="warning"><img src = "warning.png" class = "capimg"></img><xsl:value-of select="warning2" /></p>
                        </xsl:if>
                        <xsl:if test="warning3 !=''">
                       <p class="warning"><img src = "warning.png" class = "capimg"></img><xsl:value-of select="warning3" /></p>
                        </xsl:if>
                        <xsl:if test="warning4 !=''">
                       <p class="warning"><img src = "warning.png" class = "capimg"></img><xsl:value-of select="warning4" /></p>
                        </xsl:if>
                        <xsl:if test="warning5 !=''">
                       <p class="warning"><img src = "warning.png" class = "capimg"></img><xsl:value-of select="warning5" /></p>
                        </xsl:if>
                      
                      
                     
                      <xsl:if test="caution !=''">
                       <p class="caution"><img src = "caution.png" class = "capimg"></img><xsl:value-of select="caution" /></p>
                        </xsl:if>
                      
                    
                      <xsl:if test="notes !=''">
                       <p class="notes"><img src = "notes.png" class = "capimg"></img><xsl:value-of select="notes" /></p>
                        </xsl:if>
                        <xsl:if test="notes2 !=''">
                       <p class="notes"><img src = "notes.png" class = "capimg"></img><xsl:value-of select="notes2" /></p>
                        </xsl:if>
                        <xsl:if test="notes3 !=''">
                       <p class="notes"><img src = "notes.png" class = "capimg"></img><xsl:value-of select="notes3" /></p>
                        </xsl:if>
                        <xsl:if test="notes4 !=''">
                       <p class="notes"><img src = "notes.png" class = "capimg"></img><xsl:value-of select="notes4" /></p>
                        </xsl:if>
                        
                      
                        <xsl:if test="infnotes !=''">
                           <p class="infnotes"><img src = "infnotes.png" class = "capimg"></img><xsl:value-of select="infnotes" /></p>
                          </xsl:if>
                         
                        </td>
                        </xsl:when>
                        
                        <xsl:when test="icon = 3">
                      <td style="background-color:#009900"><xsl:value-of select="action"/>
                      
                           <xsl:if test="action2 !=''">
                      <p><xsl:value-of select="action2"/></p>
                      </xsl:if>
                      
                      <xsl:if test="action3 !=''">
                      <p><xsl:value-of select="action3"/></p>
                      </xsl:if>
                      
                      <xsl:if test="action4 !=''">
                      <p><xsl:value-of select="action4"/></p>
                      </xsl:if>
                      
                      <xsl:if test="action5 !=''">
                      <p><xsl:value-of select="action5"/></p>
                      </xsl:if>
                      	
                      	<xsl:if test="warning !=''">
                       <p class="warning"><img src = "warning.png" class = "capimg"></img><xsl:value-of select="warning" /></p>
                        </xsl:if>
                        
                        <xsl:if test="warning2 !=''">
                       <p class="warning"><img src = "warning.png" class = "capimg"></img><xsl:value-of select="warning2" /></p>
                        </xsl:if>
                        <xsl:if test="warning3 !=''">
                       <p class="warning"><img src = "warning.png" class = "capimg"></img><xsl:value-of select="warning3" /></p>
                        </xsl:if>
                        <xsl:if test="warning4 !=''">
                       <p class="warning"><img src = "warning.png" class = "capimg"></img><xsl:value-of select="warning4" /></p>
                        </xsl:if>
                        <xsl:if test="warning5 !=''">
                       <p class="warning"><img src = "warning.png" class = "capimg"></img><xsl:value-of select="warning5" /></p>
                        </xsl:if>
                      
                      <xsl:if test="caution !=''">
                       <p class="caution"><img src = "caution.png" class = "capimg"></img><xsl:value-of select="caution" /></p>
                        </xsl:if>
                      
                    
                      <xsl:if test="notes !=''">
                       <p class="notes"><img src = "notes.png" class = "capimg"></img><xsl:value-of select="notes" /></p>
                        </xsl:if>
                        
                      <xsl:if test="notes2 !=''">
                       <p class="notes"><img src = "notes.png" class = "capimg"></img><xsl:value-of select="notes2" /></p>
                        </xsl:if>
                        <xsl:if test="notes3 !=''">
                       <p class="notes"><img src = "notes.png" class = "capimg"></img><xsl:value-of select="notes3" /></p>
                        </xsl:if>
                        <xsl:if test="notes4 !=''">
                       <p class="notes"><img src = "notes.png" class = "capimg"></img><xsl:value-of select="notes4" /></p>
                        </xsl:if>  
                        
                        <xsl:if test="infnotes !=''">
                           <p class="infnotes"><img src = "infnotes.png" class = "capimg"></img><xsl:value-of select="infnotes" /></p>
                          </xsl:if>
                          
                  
                        </td>
                        </xsl:when>
                        
                         
                      <xsl:otherwise>
                      	
                      <td style="background-color:#4682B4"><xsl:value-of select="action"/>
                      
                      
                      <xsl:if test="action2 !=''">
                      <p><xsl:value-of select="action2"/></p>
                      </xsl:if>
                      
                      <xsl:if test="action3 !=''">
                      <p><xsl:value-of select="action3"/></p>
                      </xsl:if>
                      
                      <xsl:if test="action4 !=''">
                      <p><xsl:value-of select="action4"/></p>
                      </xsl:if>
                      
                      <xsl:if test="action5 !=''">
                      <p><xsl:value-of select="action5"/></p>
                      </xsl:if>
                      
                      	<xsl:if test="warning !=''">
                       <p class="warning"><img src = "warning.png" class = "capimg"></img><xsl:value-of select="warning" /></p>
                        </xsl:if>
                        <xsl:if test="warning2 !=''">
                       <p class="warning"><img src = "warning.png" class = "capimg"></img><xsl:value-of select="warning2" /></p>
                        </xsl:if>
                        <xsl:if test="warning3 !=''">
                       <p class="warning"><img src = "warning.png" class = "capimg"></img><xsl:value-of select="warning3" /></p>
                        </xsl:if>
                        <xsl:if test="warning4 !=''">
                       <p class="warning"><img src = "warning.png" class = "capimg"></img><xsl:value-of select="warning4" /></p>
                        </xsl:if>
                        <xsl:if test="warning5 !=''">
                       <p class="warning"><img src = "warning.png" class = "capimg"></img><xsl:value-of select="warning5" /></p>
                        </xsl:if>
                      
                      <xsl:if test="caution !=''">
                       <p class="caution"><img src = "caution.png" class = "capimg"></img><xsl:value-of select="caution" /></p>
                        </xsl:if>
                      
                    
                      <xsl:if test="notes !=''">
                       <p class="notes"><img src = "notes.png" class = "capimg"></img><xsl:value-of select="notes" /></p>
                        </xsl:if>
                        
                        <xsl:if test="notes2 !=''">
                       <p class="notes"><img src = "notes.png" class = "capimg"></img><xsl:value-of select="notes2" /></p>
                        </xsl:if>
                        <xsl:if test="notes3 !=''">
                       <p class="notes"><img src = "notes.png" class = "capimg"></img><xsl:value-of select="notes3" /></p>
                        </xsl:if>
                        <xsl:if test="notes4 !=''">
                       <p class="notes"><img src = "notes.png" class = "capimg"></img><xsl:value-of select="notes4" /></p>
                        </xsl:if>
                        
                        <xsl:if test="infnotes !=''">
                           <p class="infnotes"><img src = "infnotes.png" class = "capimg"></img><xsl:value-of select="infnotes" /></p>
                            </xsl:if>
                          </td>
                        </xsl:otherwise>
                      </xsl:choose>
                      
                        <!--  Column 6 info  -->
                      
                      
                      <xsl:choose>
                      	
                      <xsl:when test="icon = 2">
                        <td class="checklist-1-border" style="background-color:#4682B4"><img src="trans5050.png" /></td>
                      </xsl:when>
                  
                      <xsl:otherwise>
                        <td class="checklist-1-border" style="background-color:#FF8C00"><img src="trans5050.png" /></td>
                      </xsl:otherwise>
                      
                      </xsl:choose>
                      
                     
                      
                     </tr>
                  </xsl:for-each>
                
               
                
                </tbody>
                </table>
                </form>
				</div>
            </xsl:for-each>     
        </div>
       </xsl:for-each>

  </div>
  
  
  <!-- part two -->      
  <div data-role="main" class="ui-content">
    
    
      <xsl:for-each select="checklist/transphase">
      	<div data-role="collapsible">
        <h2><xsl:value-of select="transphasetitle"/><img src = "logo png.png" class = "capimg"></img></h2>
            <xsl:for-each select="transstage">
            <div data-role="collapsible">
                <h3 class="txt_centre"><xsl:value-of select="transstagetitle"/><img src = "logo png.png" class = "capimg"></img>
                <img onclick="myFunction()" src="rsz_collapse.png" style="width: 5%; height: 5%; float: right;  text-align: center"></img></h3>
                <form method="post" id="{formnum}">
                	
               
<!--===============================================header transponder================================================================-->                 
                <xsl:choose>
                  
                   <xsl:when test="transstagetitle = 'TRANSPONDER CODES'">
                
                
                <table style="width:100%" id="checklist" >
                
                  <colgroup>
                              <col style="width:40%" />
                              <col style="width:60%" />
                </colgroup>

                    
                     	 <tr >
                            
                              <td style="background-color: #ffc926">
                                 <h3>Transponder Code</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Use</h3>
                              </td>
                              
                          </tr>
                     	  
                     
                  
                 </table>
                 
                 </xsl:when>
                   
                    </xsl:choose>
<!--=================================================data transponder====================================================--> 
           
                <xsl:choose>
                  
                   <xsl:when test="transstagetitle = 'TRANSPONDER CODES'">
                
                
                <table style="width:100%" id="checklist" summary="Checklist">
                 <colgroup>
                              <col style="width:40%" />
                              <col style="width:60%" />
                 </colgroup>
                  
                  <!--     Start of display steps   -->
               
                  <tbody>
                  <xsl:for-each select="transstep">
                    
  
                  <tr class="{numcol}">
                  
                      <xsl:choose>
                    
                      <xsl:when test="transicon = 25">
                        <td style="background-color:#4682B4"><xsl:value-of select="transnumber"/></td>
                      </xsl:when>
                   
                     
                      </xsl:choose>
                     
                      <xsl:choose>
                      
                      <xsl:when test="transicon = 25">
                        <td style="background-color:#4682B4"><xsl:value-of select="transitem"/></td>
                      </xsl:when>
          
                      </xsl:choose>
                    
                     </tr>
                  </xsl:for-each>
                               
                </tbody>
                </table>
                
                </xsl:when>
                   
                    </xsl:choose>
<!--===============================================data end==============================================================-->                 
                
<!--===============================================header morse================================================================-->                 
                <xsl:choose>
                  
                   <xsl:when test="transstagetitle = 'MORSE CODE'">
                
                
                <table style="width:100%" id="checklist" >
                
                  <colgroup>
                              <col style="width:20%" />
                              <col style="width:30%" />
                              <col style="width:20%" />
                              <col style="width:30%" />
                </colgroup>

                    
                     	 <tr >
                            
                              <td style="background-color: #ffc926">
                                 <h3>Letter</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Code</h3>
                              </td>
                              <td style="background-color: #ffc926">
                                 <h3>Letter</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Code</h3>
                              </td>
                              
                          </tr>
                     	  
                     
                  
                 </table>
                 
                 </xsl:when>
                   
                    </xsl:choose>
<!--=================================================data morse====================================================--> 
           
                <xsl:choose>
                  
                   <xsl:when test="transstagetitle = 'MORSE CODE'">
                
                
                <table style="width:100%" id="checklist" summary="Checklist">
                 <colgroup>
                              <col style="width:20%" />
                              <col style="width:30%" />
                              <col style="width:20%" />
                              <col style="width:30%" />
                 </colgroup>
                  
                  <!--     Start of display steps   -->
               
                  <tbody>
                  <xsl:for-each select="transstep">
                    
  
                  <tr class="{numcol}">
                  
                      <xsl:choose>
                      <xsl:when test="transicon = 26">
                        <td style="background-color:#4682B4"><xsl:value-of select="transletter"/></td>
                      </xsl:when>
                      </xsl:choose>
                     
                      <xsl:choose>
                      <xsl:when test="transicon = 26">
                        <td style="background-color:#009900"><xsl:value-of select="transcode"/></td>
                      </xsl:when>
                      </xsl:choose>
                      <xsl:choose>
                      <xsl:when test="transicon = 26">
                        <td style="background-color:#4682B4"><xsl:value-of select="transletter2"/></td>
                      </xsl:when>
                      </xsl:choose>
                     
                      <xsl:choose>
                      <xsl:when test="transicon = 26">
                        <td style="background-color:#009900"><xsl:value-of select="transcode2"/></td>
                      </xsl:when>
                      </xsl:choose>
                    
                  </tr>
                  </xsl:for-each>
                               
                </tbody>
                </table>
                
                </xsl:when>
                   
                    </xsl:choose>
<!--===============================================data end==============================================================-->   
<!--===============================================header WIND TABLE================================================================-->                 
                <xsl:choose>
                  
                   <xsl:when test="transstagetitle = 'WIND TABLE TO EXTEND OUTBOUND LEG FOR HOLDING'">
                
                
                <table style="width:100%" id="checklist" >
                
                  <colgroup>
                              <col style="width:40%" />
                              <col style="width:60%" />
                </colgroup>

                    
                     	 <tr >
                            
                              <td style="background-color: #ffc926">
                                 <h3>Head Wind</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Increase the outbound leg by</h3>
                              </td>
                              
                          </tr>
                     	  
                     
                  
                 </table>
                 
                 </xsl:when>
                   
                    </xsl:choose>
<!--=================================================data transponder====================================================--> 
           
                <xsl:choose>
                  
                   <xsl:when test="transstagetitle = 'WIND TABLE TO EXTEND OUTBOUND LEG FOR HOLDING'">
                
                
                <table style="width:100%" id="checklist" summary="Checklist">
                 <colgroup>
                              <col style="width:40%" />
                              <col style="width:60%" />
                 </colgroup>
                  
                  <!--     Start of display steps   -->
               
                  <tbody>
                  <xsl:for-each select="transstep">
                    
  
                  <tr class="{numcol}">
                  
                      <xsl:choose>
                    
                      <xsl:when test="transicon = 25">
                        <td style="background-color:#4682B4"><xsl:value-of select="transnumber"/></td>
                      </xsl:when>
                   
                     
                      </xsl:choose>
                     
                      <xsl:choose>
                      
                      <xsl:when test="transicon = 25">
                        <td style="background-color:#4682B4"><xsl:value-of select="transitem"/></td>
                      </xsl:when>
          
                      </xsl:choose>
                    
                     </tr>
                  </xsl:for-each>
                               
                </tbody>
                </table>
                
                </xsl:when>
                   
                    </xsl:choose>
<!--===============================================data end==============================================================-->                 
     <!--===============================================header considerations================================================================-->                 
                <xsl:choose>
                  
                   <xsl:when test="transstagetitle = 'BEFORETAKE-OFF CONSIDERATIONS (DAP 1-7)'">
                
                
                <table style="width:100%" id="checklist" >
                
                  <colgroup>
                              <col style="width:45%" />
                              <col style="width:28%" />
                              <col style="width:27%" />
                </colgroup>

                    
                     	 <tr >
                            
                              <td style="background-color: #ffc926">
                                 <h3>Weather at Departure</h3>
                              </td>
                                 
                              <td style="background-color: #ffc926; ">
                                 <h3>Visibility</h3>
                              </td>
                              <td style="background-color: #ffc926">
                                 <h3>Ceiling</h3>
                              </td>
                                 
                             
                              
                          </tr>
                     	  
                     
                  
                 </table>
                 
                 </xsl:when>
                   
                    </xsl:choose>
<!--=================================================data CONS====================================================--> 
           
                <xsl:choose>
                  
                   <xsl:when test="transstagetitle = 'BEFORETAKE-OFF CONSIDERATIONS (DAP 1-7)'">
                
                
                <table style="width:100%" id="checklist" summary="Checklist">
                 <colgroup>
                              <col style="width:45%" />
                              <col style="width:28%" />
                              <col style="width:27%" />
                 </colgroup>
                  
                  <!--     Start of display steps   -->
               
                  <tbody>
                  <xsl:for-each select="transstep">
                    
  
                  <tr class="{numcol}">
                  
                      <xsl:choose>
                      <xsl:when test="transicon = 27">
                        <td style="background-color:#4682B4"><xsl:value-of select="transweather"/></td>
                      </xsl:when>
                      </xsl:choose>
                     
                      <xsl:choose>
                      <xsl:when test="transicon = 27">
                        <td style="background-color:#4682B4"><xsl:value-of select="transvisibility"/></td>
                      </xsl:when>
                      </xsl:choose>
                      <xsl:choose>
                      <xsl:when test="transicon = 27">
                        <td style="background-color:#4682B4"><xsl:value-of select="transceiling"/></td>
                      </xsl:when>
                      </xsl:choose>
                     
                      
                    
                  </tr>
                  </xsl:for-each>
                               
                </tbody>
                </table>
                
                </xsl:when>
                   
                    </xsl:choose>
<!--===============================================data end==============================================================-->              
                
                </form>
				</div>
            </xsl:for-each>     
        </div>
       </xsl:for-each>

  </div>
  
     
          
<!-- part two end-->  
  
  
  
  
  

  <div data-role="footer">
    <h1>Becker Helicopters Copyright 2015 V3.0</h1>
  </div>
</div> 

<!--    Page 2 Dialogue Box FOR TESTING-->
  <div data-role="page" data-dialog="true" id="pagetwo">
  <div data-role="header">
    <h1>Warning</h1>
  </div>

  <div data-role="main" class="ui-content">
    <p>NOTE:  IT IS PREFERABLE TO TURN THE MAIN ROTOR BLADES BACKWARDS WHEN TYING THEM DOWN.  THIS IS TO HELP ELEVIATE TURBINE RUB OR CARBON BUILD UP ON THE LABYRINTH SEAL.  IT IS NOT MANDATORY BUT A PREFFERED PROCEDURE.</p>
    <a href="#pageone">Go to Page One</a>
  </div></div>
  <!--    Page 2 Dialogue Box FOR TESTING-->











  </body>
  </html>
</xsl:template>

</xsl:stylesheet>

