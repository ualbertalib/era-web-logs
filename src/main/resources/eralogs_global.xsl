<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="html"/>

    <xsl:template match="listing">
        <html>
            <head>
                <meta charset="utf-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <title>ERA Web Logs: / <xsl:value-of select="translate(@directory, '/', '')"
                    /></title>

                <!-- Bootstrap -->
                <!-- Latest compiled and minified CSS -->
                <link rel="stylesheet"
                    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"/>

                <!-- Optional theme -->
                <link rel="stylesheet"
                    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css"/>

                <!-- Latest compiled and minified JavaScript -->
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"/>

                <!-- Custom styles for this template -->
                <link href="./WEB-INF/css/sticky-footer.css" rel="stylesheet"/>

                <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
                <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
                <!--[if lt IE 9]>
                    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
                    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
                <![endif]-->
            </head>
            <body>
                <div class="container">
                    <div class="page-header">
                        <h2>ERA Web Logs: / <xsl:value-of select="translate(@directory, '/', '')"
                            /></h2>
                    </div>
                    <div>
                        <ol class="breadcrumb">
                            <li>
                                <a href="/eralogs/">Home</a>
                            </li>
                            <li class="active">
                                <xsl:value-of select="translate(@directory, '/', '')"/>
                            </li>
                        </ol>
                    </div>
                    <table class="table table-hover table-condensed">
                        <thead>
                            <tr>
                                <th class="text-left">Filename</th>
                                <th class="text-center">Size</th>
                                <th class="text-right">Last Modified</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:apply-templates select="entries"/>
                        </tbody>
                    </table>
                    <xsl:apply-templates select="readme"/>
                    <div>
                        <div class="container">
                            <hr/>
                            <p class="text-muted">ERA: Education and Research Archive</p>
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>


    <xsl:template match="entries">
        <xsl:apply-templates select="entry"/>
    </xsl:template>

    <xsl:template match="readme">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="entry">
        <tr>
            <td class="text-left">
                <xsl:variable name="urlPath" select="@urlPath"/>
                <a href="{$urlPath}">
                    <xsl:apply-templates/>
                </a>
            </td>
            <td class="text-right">
                <xsl:value-of select="@size"/>
            </td>
            <td class="text-right">
                <xsl:value-of select="@date"/>
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
