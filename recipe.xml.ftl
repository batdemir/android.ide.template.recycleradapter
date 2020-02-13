<?xml version="1.0"?>
<recipe>

    <instantiate from="res/layout/item.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="src/app_package/RecyclerAdapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/Adapter${className}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/Adapter${className}.java" />
    
</recipe>
