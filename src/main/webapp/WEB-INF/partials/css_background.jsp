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
<%--H1 lettering--%>
h1
{
font-size: 60px;
color:orange;
text-align:center;
}

<%--H2 lettering--%>
h2
{
margin-top:30px;
font-size: 40px;
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
bottom: 0;
width: 100%;
background-color: #0C6DFD;
text-align: center;
}

.nvc {
color:orange;
}
.cl {
color: red;
}

p:hover
{
transform: scale(1.1);
cursor: zoom-in;
}

.btns
{
font-size: 50px;
display: grid;
column-gap: 25px;
grid-template-columns: auto auto auto;
padding: 10px;
}

.btnsS
{
color: blue;
border: 5px inset rgba(0, 0, 0, 0.8);
padding: 20px;
font-size: 30px;
text-align: center
}

.btz:hover
{
transform: scale(1.1);
cursor: zoom-in;
}

.cmt
{
font-size: 30px;
display: grid;
column-gap: 25px;
grid-template-columns: auto auto auto;
padding: 10px;
}

.cmtC
{
color: blue;
border: 5px inset rgba(0, 0, 0, 0.8);
padding: 20px;
font-size: 30px;
text-align: center
border-style: double;
border-color :orange ;
}

.cmtc:hover
{
background-color:green;
color:white;
}

.pd {padding;:10px}

.editBtn {

	color: white;
	text-decoration: none;

}

.editBtn:active {
	color: white;
}

.editBtn:hover {
	color: white;
}