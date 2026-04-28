<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
<head>
    <title>Library Books</title>
    <style>
        table {
            border-collapse: collapse;
            width: 60%;
        }
        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: lightgreen;
        }
    </style>
</head>

<body>

<h2>Library Book List</h2>

<table>
    <tr>
        <th>Title</th>
        <th>Author</th>
        <th>Price</th>
    </tr>

    <xsl:for-each select="library/book">
        <tr>
            <td><xsl:value-of select="title"/></td>
            <td><xsl:value-of select="author"/></td>
            <td><xsl:value-of select="price"/></td>
        </tr>
    </xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>