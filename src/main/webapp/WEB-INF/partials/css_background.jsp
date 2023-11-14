<%--background image--%>
body
{
background-image: url("../img/field.jpeg");
background-repeat: no-repeat;
background-size: cover;
background-position: center;
height: 100%;
background-attachment: fixed;
}
<%--spacing for the tilte of page and header to be fixed--%>
.buffer{
margin-top:70px;
}
<%--H! lettering--%>
h1
{
color:orange;
text-align:center;
}
<%--card box holds all card info--%>
.grid
{
display: grid;
column-gap: 25px;
grid-template-columns: auto auto auto;
padding: 10px;
border-style: double;
border-color :orange ;
}

<%--individual cards holding ads info--%>
.grid-item
{
color: blue;
border: 5px inset rgba(0, 0, 0, 0.8);
padding: 20px;
font-size: 30px;
text-align: center

}

<%--nav bar stick--%>
nav
{
position: fixed;
top: 0;
width:100%;
margin-bottom:20px;
}
<%-- footer --%>
footer
{
left: 0;
bottom: 0;
width: 100%;
background-color: #0C6DFD;
color: white;
text-align: center;
}

.nvc {
color:orange;
}
.cl {
color: red;
}
