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
                <h3 class="txt_centre"><xsl:value-of select="stagetitle"/><img src = "logo png.png" class = "capimg"></img></h3>
                <form method="post">
                	
                <!--<xsl:value-of select="stagenotes" disable-output-escaping="yes"/>-->
                
                <table id="checklist" summary="Checklist">
                <colgroup>
                    <col style="width:3%"/>
                    <col style="width:5%"/>
                    <col style="width:18%" class="checklist-first" />
                    <col style="width:5%"/>
                    <col style="width:70%"/>
                </colgroup>
                <thead>
                  <tr>
                    <xsl:choose> 
                    <xsl:when test="stagetitle = 'LIMITATIONS' or stagetitle = 'PRE-LANDING CHECKS'">
                     </xsl:when>
                    <xsl:otherwise>
                    <th style="background-color: #ffc926" scope="col"><h3></h3></th>
                    <th style="background-color: #ffc926" scope="col"><h3>No</h3></th>
                    <th style="background-color: #ffc926" scope="col"><h3>Item</h3></th>
                    <th style="background-color: #ffc926" scope="col"><input type="reset" value="Reset" data-icon="back"/></th>
                    <th style="background-color: #ffc926" scope="col"><h3>Action</h3></th>
                     </xsl:otherwise>
               
                      </xsl:choose>
                    
                  </tr>
                  </thead>
                  
                  
                  
                  
                  <tbody><!-- Dialogue Page if required <a href="#pagetwo">Go to Dialog Page</a>-->
                  <xsl:for-each select="step">
                    <tr>
                    
                      <!--  Column 1 NIFR/ Multipul Liftoffs   -->
                      <xsl:choose> 
               
                      <xsl:when test="numcol = 1">
                        <td class="checklist-1-border" style="background-color:#4682B4"><img src="rsz_moon.png" title="INDICATES NIFR (NOT DAY)" rel="tooltip"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 2">
                        <td class="checklist-1-border" style="background-color:#FFA500"><img src="trans5050.png" /></td>
                       </xsl:when>
                      
                      <xsl:when test="numcol = 3">
                        <td class="checklist-1-border" style="background-color:#3CB371"><img src="blacktriangle.png" title="ABBREVIATED CHECKS DURING MULTIPUL LIFT-OFFS, LANDINGS AND CIRCUITS" rel="tooltip"/></td>
                      </xsl:when>a
                      
                      <xsl:when test="numcol = 4">
                        <td class="checklist-1-border" style="background-color:#FFA500"><img src="h.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 5">
                        <td class="checklist-1-border" style="background-color:#FFA500"><img src="e.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 6">
                        <td class="checklist-1-border" style="background-color:#FFA500"><img src="f.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 7">
                        <td class="checklist-1-border" style="background-color:#FFA500"><img src="r.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 8">
                        <td class="checklist-1-border" style="background-color:#FFA500"><img src="p.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 9">
                        <td class="checklist-1-border" style="background-color:#FFA500"><img src="w.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 10">
                        <td class="checklist-1-border" style="background-color:#FFA500"><img src="t.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 11">
                        <td class="checklist-1-border" style="background-color:#FFA500"><img src="m.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 12">
                        <td class="checklist-1-border" style="background-color:#FFA500"><img src="s.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 13">
                        <td class="checklist-1-border" style="background-color:#FFA500"><img src="a.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 14">
                        <td class="checklist-1-border" style="background-color:#FFA500"><img src="c.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 15">
                        <td class="checklist-1-border" style="background-color:#FFA500"><img src="l.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 16">
                        <td class="checklist-1-border" style="background-color:#FFA500"><img src="o.png"/></td>
                      </xsl:when>
                      
                      <xsl:when test="numcol = 17">
                        <td class="checklist-1-border" style="background-color:#FFA500"></td>
                      </xsl:when>
                      
                      <!-- 12 - Multi + Letter P -->
                      
                      <xsl:when test="numcol = 50">
                        <td class="checklist-1-border" style="background-color:#3CB371"><img src="blacktriangle.png"/><img src="p.png"/></td>
                      </xsl:when>
                      
                       <!-- 12 - Multi + Letter W -->
                      <xsl:when test="numcol = 51">
                        <td class="checklist-1-border" style="background-color:#3CB371"><img src="blacktriangle.png"/><img src="w.png"/></td>
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
                        <td style="background-color:#ffa500"></td>
                      </xsl:when>
                   
                   
                      <xsl:otherwise>
                        <td style="background-color:#FFA500"><xsl:value-of select="number"/></td>
                      </xsl:otherwise>
                      
                      </xsl:choose>
                      
                      <!--  Column 3 Item Color   -->	
                      
                      <xsl:choose>
                      
                      <xsl:when test="icon = 2">
                        <td style="background-color:#4682B4"><xsl:value-of select="item"/></td>
                      </xsl:when>
          
                      <xsl:otherwise>
                        <td style="background-color:#FFA500"><xsl:value-of select="item"/></td>
                      </xsl:otherwise>
                      
                      </xsl:choose>
                       
                      <xsl:choose>
                      	
                      <xsl:when test="icon = 2">
                        <td style="background-color:#4682B4"><input type="checkbox" name="checklist" /></td>
                      </xsl:when>
                      
                      <xsl:when test="icon = 3">
                        <td style="background-color:#FFA500"></td>
                      </xsl:when>
                      
                      
                      
                      <xsl:otherwise>
                        <td style="background-color:#FFA500"><input type="checkbox" name="checklist" /></td>
                      </xsl:otherwise>
                      
                      </xsl:choose>
                       
                      

                      
                     
                       
                       
                      <!--  Column 4 Action  -->	
                      
                     
                      <xsl:choose>
                      	
                      <xsl:when test="icon = 1">
                      <td style="background-color:#FFA500"><xsl:value-of select="action"/>
                      
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
                      
                      <xsl:if test="caution !=''">
                       <p class="caution"><img src = "caution.png" class = "capimg"></img><xsl:value-of select="caution" /></p>
                        </xsl:if>
                      
                    
                      <xsl:if test="notes !=''">
                       <p class="notes"><img src = "notes.png" class = "capimg"></img><xsl:value-of select="notes" /></p>
                        </xsl:if>
                        
                        <xsl:if test="infnotes !=''">
                           <p class="infnotes"><img src = "infnotes.png" class = "capimg"></img><xsl:value-of select="infnotes" /></p>
                          </xsl:if>
                          
                 
                          
                        </td>
                        </xsl:when>
                        
                        <xsl:when test="icon = 3">
                      <td style="background-color:#b0e0e6"><xsl:value-of select="action"/>
                      
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
                      
                      <xsl:if test="caution !=''">
                       <p class="caution"><img src = "caution.png" class = "capimg"></img><xsl:value-of select="caution" /></p>
                        </xsl:if>
                      
                    
                      <xsl:if test="notes !=''">
                       <p class="notes"><img src = "notes.png" class = "capimg"></img><xsl:value-of select="notes" /></p>
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
                      
                      <xsl:if test="caution !=''">
                       <p class="caution"><img src = "caution.png" class = "capimg"></img><xsl:value-of select="caution" /></p>
                        </xsl:if>
                      
                    
                      <xsl:if test="notes !=''">
                       <p class="notes"><img src = "notes.png" class = "capimg"></img><xsl:value-of select="notes" /></p>
                        </xsl:if>
                        
                        <xsl:if test="infnotes !=''">
                           <p class="infnotes"><img src = "infnotes.png" class = "capimg"></img><xsl:value-of select="infnotes" /></p>
                            </xsl:if>
                          </td>
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
  
  

  <div data-role="footer">
    <h1>Becker Helicopters Copyright 2015</h1>
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
