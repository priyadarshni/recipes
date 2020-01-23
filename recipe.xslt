<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<style>
#left{
    float:left;
    width:50%;
    
    }
#right{
float:right;
width:50%;
text-align:center;
    }
body{
background-color: antiquewhite;
    font-family:cursive;
    }
header{
    background-color: purple;
    height: 150px;
    padding: 4px;
}
header h1{
    text-transform: uppercase;
    text-align: center;
    color: white;
    font-size: 4em;
    line-height: 50px;
}
p{
text-align:center;
font-size:2em;
    }
img{
    margin: 10px;
    }
.content{
    clear:both;
    border:2px solid black;
    width:100%;
    height:220%;
    }
footer{
    clear:both;
    background-color: purple;
    height: 8em;
    width:100%;
    text-align: center;
}
footer p{
    padding: 20px;
    font-size: 1.5em;
    color: white;
}
.menu{
    margin: 0;
    padding: 5px 0 5px 0;
    text-align: center;
    line-height: 32px;
    background-color: purple;
}
ul.menu{
    margin-top: 15px;
}
.menu li{
    display: inline;
    padding: 0 10px 0 10px;
    font-size: 2em;
}
.menu li a {
    text-decoration: none;
    color: azure;
    padding: 8px;
    font-variant: small-caps;
}
.menu li a:hover{
 color: coral; 

}
    h2{
    font-size:2em;
<!--    color:purple;-->
    text-align:center;
    border: 2px solid black;
    }
</style>
<head> 
    <title>Recipes</title>    
</head>
<body>
    <header><h1>Recipes-You should try</h1></header>
    <nav>
<ul class="menu">
<li><a href="index.html" target="_blank">Home</a></li>
<li><a href="recipe.xml">Recipes</a></li>
<li><a href="contact.html" target="_blank">COntact us</a></li>
    </ul>   
</nav>
     <xsl:for-each select="Recipe/recipe">
  <div class="content">  
         <h2><xsl:value-of select="rname"/></h2> 
    <div id="left">
  
    
<!--
      <xsl:for-each select="ingredients">
            <xsl:value-of select="text()"/><br/>
        </xsl:for-each>
-->
   <p>Ingredients</p>
   <ul>
        <xsl:for-each select="ingredients">
          <li>
<!--            <xsl:value-of select="position()"/>-->
            <xsl:text> </xsl:text>
            <xsl:value-of select="text()"/>
          </li>
        </xsl:for-each>
      </ul>
        <p>Procedure</p>
        <ul>
        <xsl:for-each select="procedure">
          <li>
<!--            <xsl:value-of select="position()"/>-->
            <xsl:text> </xsl:text>
            <xsl:value-of select="text()"/>
          </li>
        </xsl:for-each>
      </ul>
    <p>Hints for you:</p>
<ul>
        <xsl:for-each select="hint">
          <li>
<!--            <xsl:value-of select="position()"/>-->
            <xsl:text> </xsl:text>
            <xsl:value-of select="text()"/>
          </li>
        </xsl:for-each>
      </ul>
   </div>
    <div id="right">
  <img src="{photo}"></img>
   <p>Made By</p> 
    <xsl:value-of select="madeby"/> 
    <p>Serves</p> 
    <xsl:value-of select="serves"/>
    </div>
      
   
        </div>
          </xsl:for-each>
<!--
  <tab
      <th>Recipe Name</th>
      <th>Serves</th>
    </tr>
    <xsl:for-each select="Recipe/recipe">
    <tr>
      <td><xsl:value-of select="rname"/></td>
      <td><xsl:value-of select="serves"/></td>
    
    </tr>
    </xsl:for-each>
  </table>
-->
<footer>
<p>All rights reserved @Priyadarshni</p>
</footer>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

