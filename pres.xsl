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
        <h1><xsl:value-of select="phasetitle"/></h1>
            <xsl:for-each select="stage">
            <div data-role="collapsible">
                <h2><xsl:value-of select="stagetitle"/></h2>
                <form method="post">
                <table id="checklist" summary="Checklist">
                <colgroup>
                    <col style="width:5%"/>
                    <col style="width:20%" class="checklist-first" />
                    <col style="width:5%"/>
                    <col style="width:70%"/>
                </colgroup>
                <thead>
                  <tr>
                    <th scope="col">No</th>
                    <th scope="col">Item</th>
                    <th scope="col"><input type="reset" value="Reset" /></th>
                    <th scope="col">Action</th>
                  </tr>
                  </thead>
                  
                  
                  
                  
                  <tbody>
                  <xsl:for-each select="step">
                    <tr>
                      <td><xsl:value-of select="number"/></td>
                      <td><xsl:value-of select="item"/></td>
                      <td><input type="checkbox" name="checklist" /></td>
                      <td><xsl:value-of select="action"/>
                         
                      <xsl:if test="warning !=''">
                       <p class="warning"><img src = "warning.png" class = "capimg"></img><xsl:value-of select="warning" /></p>
                        </xsl:if>
                      
                      <xsl:if test="caution !=''">
                       <p class="caution"><img src = "caution.png" class = "capimg"></img><xsl:value-of select="caution" /></p>
                        </xsl:if>
                      
                    
                      <xsl:if test="notes !=''">
                       <p class="notes"><img src = "notes.png" class = "capimg"></img><xsl:value-of select="notes" /></p>
                        </xsl:if>
                        
<!--                              Display only when selected                                                        -->
                        <xsl:if test="infnotes !=''">
                           <p class="infnotes"><img src = "infnotes.png" class = "capimg"></img><xsl:value-of select="infnotes" /></p>
                            
                        </xsl:if>
                        
                        
                        
                        
                        
                      </td>
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
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
