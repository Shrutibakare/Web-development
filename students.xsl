<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
<head>
    <title>Student Result</title>
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
            background-color: lightblue;
        }
    </style>
</head>

<body>

<h2>Student Result Table</h2>

<table>
    <tr>
        <th>Name</th>
        <th>Marks</th>
        <th>Status</th>
        <th>Grade</th>
    </tr>

    <xsl:for-each select="students/student">
        <tr>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="marks"/></td>

            <!-- PASS / FAIL using xsl:if -->
            <td>
                <xsl:if test="marks >= 40">
                    Pass
                </xsl:if>
                <xsl:if test="marks &lt; 40">
                    Fail
                </xsl:if>
            </td>

            <!-- Grade using xsl:choose -->
            <td>
                <xsl:choose>
                    <xsl:when test="marks >= 75">Distinction</xsl:when>
                    <xsl:when test="marks >= 60">First Class</xsl:when>
                    <xsl:when test="marks >= 40">Second Class</xsl:when>
                    <xsl:otherwise>Fail</xsl:otherwise>
                </xsl:choose>
            </td>

        </tr>
    </xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>