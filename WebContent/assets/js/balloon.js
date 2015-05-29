/*
 * Author: Team3 Echo
 * This is the Javascript for popup window when hovering over the Question Mark.
 */
var disappeardelay = 250 //tooltip disappear delay (in miliseconds)
var verticaloffset = 0 //vertical offset of tooltip from anchor link, if any

var ie = document.all
var ns6 = document.getElementById && !document.all

function getposOffset(what, offsettype) {
    var totaloffset = (offsettype == "left") ? what.offsetLeft : what.offsetTop;
    var parentEl = what.offsetParent;
    while (parentEl != null) {
        totaloffset = (offsettype == "left") ? totaloffset + parentEl.offsetLeft : totaloffset + parentEl.offsetTop;
        parentEl = parentEl.offsetParent;
    }
    return totaloffset;
}

function showhide(obj, e) {
    dropmenuobj.style.left = dropmenuobj.style.top = "-500px"
    if (e.type == "mouseover")
        obj.visibility = "visible"
}

function iecompattest() {
    return (document.compatMode && document.compatMode != "BackCompat") ? document.documentElement : document.body
}

function clearbrowseredge(obj, whichedge) {
    if (whichedge == "rightedge") {
        edgeoffsetx = 0
        var windowedge = ie && !window.opera ? iecompattest().scrollLeft + iecompattest().clientWidth - 15 : window.pageXOffset + window.innerWidth - 15
        dropmenuobj.contentmeasure = dropmenuobj.offsetWidth
        if (windowedge - dropmenuobj.x < dropmenuobj.contentmeasure)
            edgeoffsetx = dropmenuobj.contentmeasure - obj.offsetWidth
        if (dropmenuobj.x - edgeoffsetx + dropmenuobj.contentmeasure > windowedge)
            edgeoffsetx = dropmenuobj.x - windowedge + dropmenuobj.contentmeasure
        return edgeoffsetx
    } else {
        edgeoffsety = 0
        var topedge = ie && !window.opera ? iecompattest().scrollTop : window.pageYOffset
        var windowedge = ie && !window.opera ? iecompattest().scrollTop + iecompattest().clientHeight - 15 : window.pageYOffset + window.innerHeight - 18
        dropmenuobj.contentmeasure = dropmenuobj.offsetHeight
        if (windowedge - dropmenuobj.y < dropmenuobj.contentmeasure) //move up?
            edgeoffsety = dropmenuobj.contentmeasure + obj.offsetHeight + (verticaloffset * 2)
        return edgeoffsety
    }
}

function displayballoontip(obj, e) { //main ballooon tooltip function
    if (window.event) event.cancelBubble = true
    else if (e.stopPropagation) e.stopPropagation()
    if (typeof dropmenuobj != "undefined") //hide previous tooltip?
        dropmenuobj.style.visibility = "hidden"
    clearhidemenu()
        //obj.onmouseout=delayhidemenu
    dropmenuobj = document.getElementById(obj.getAttribute("rel"))
    showhide(dropmenuobj.style, e)
    dropmenuobj.x = getposOffset(obj, "left")
    dropmenuobj.y = getposOffset(obj, "top") + verticaloffset
    dropmenuobj.style.left = dropmenuobj.x - clearbrowseredge(obj, "rightedge") + "px"
    dropmenuobj.style.top = dropmenuobj.y - clearbrowseredge(obj, "bottomedge") + obj.offsetHeight + "px"

}

function delayhidemenu() {
    delayhide = setTimeout("dropmenuobj.style.visibility='hidden'; dropmenuobj.style.left=0;", disappeardelay)
}

function clearhidemenu() {
    if (typeof delayhide != "undefined")
        clearTimeout(delayhide)
}

function reltoelement(linkobj) { //tests if a link has "rel" defined and it's the ID of an element on page
    var relvalue = linkobj.getAttribute("rel")
    return (relvalue != null && relvalue != "" && document.getElementById(relvalue) != null && document.getElementById(relvalue).className == "balloonstyle") ? true : false
}

function initalizetooltip() {
    var all_links = document.getElementsByTagName("a")

    for (var i = 0; i < all_links.length; i++) {
        if (reltoelement(all_links[i])) { //if link has "rel" defined and it's the ID of an element on page
            all_links[i].onmouseover = function(e) {
                var evtobj = window.event ? window.event : e
                displayballoontip(this, evtobj)
            }
            all_links[i].onmouseout = delayhidemenu
        }
    }
}

if (window.addEventListener)
    window.addEventListener("load", initalizetooltip, false)
else if (window.attachEvent)
    window.attachEvent("onload", initalizetooltip)
else if (document.getElementById)
    window.onload = initalizetooltip