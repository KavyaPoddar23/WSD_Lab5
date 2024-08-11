<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/travelPackages">
        <html>
            <head>
                <title>Travel and Tourism Packages</title>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css"/>
            </head>
            <body class="bg-gray-100 font-sans">
                <div class="container mx-auto p-6">
                    <h1 class="text-3xl font-bold text-gray-800 mb-6">Travel and Tourism Packages</h1>
                    <table class="min-w-full bg-white border border-gray-300 rounded-lg shadow-md">
                        <thead>
                            <tr class="bg-gray-200 text-gray-700">
                                <th class="py-2 px-4 border-b">ID</th>
                                <th class="py-2 px-4 border-b">Name</th>
                                <th class="py-2 px-4 border-b">Description</th>
                                <th class="py-2 px-4 border-b">Price</th>
                                <th class="py-2 px-4 border-b">Availability</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="package">
                                <tr class="text-gray-700 even:bg-gray-50">
                                    <td class="py-2 px-4 border-b"><xsl:value-of select="id"/></td>
                                    <td class="py-2 px-4 border-b"><xsl:value-of select="name"/></td>
                                    <td class="py-2 px-4 border-b"><xsl:value-of select="description"/></td>
                                    <td class="py-2 px-4 border-b"><xsl:value-of select="price"/></td>
                                    <td class="py-2 px-4 border-b"><xsl:value-of select="availability"/></td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
