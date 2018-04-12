// ==UserScript==
// @name       userChrome.js
// @namespace  SmallScrollbars
// @note       Loading of userChrome.js https://github.com/nuchi/firefox-quantum-userchromejs
// @note       Forked from https://github.com/ardiman/userChrome.js/blob/master/floatingscrollbar/FloatingScrollbar.uc.js
// ==/UserScript==

(function () {

	var css = `
		@namespace url(http: //www.mozilla.org/keymaster/gatekeeper/there.is.only.xul);
		:not(select):not(hbox) > scrollbar {
			-moz-appearance: none !important;
			position: relative !important;
			pointer-events: none;
		}
		:not(select):not(hbox) > scrollbar thumb {
			-moz-appearance: none !important;
			background-color: rgba(128, 128, 128, 0.4);
			pointer-events: auto;
		}
		:not(select):not(hbox) > scrollbar[orient="vertical"] {
			width: 3px !important;
			margin-left: -3px;
		}
		:not(select):not(hbox) > scrollbar[orient="horizontal"] {
			height: 3px !important;
			margin-top: -3px;
		}
		:not(select):not(hbox) > scrollbar:hover thumb {
			background-color: rgba(128, 128, 128, 0.8);
		}
		:not(select):not(hbox) > scrollbar[orient="vertical"]:hover {
			width: 6px !important;
			margin-left: -6px;
		}
		:not(select):not(hbox) > scrollbar[orient="horizontal"]:hover {
			height: 6px !important;
			margin-top: -6px;
		}
	`;

	var uri = makeURI('data:text/css;charset=UTF=8,' + encodeURIComponent(css));
	var sss = Cc['@mozilla.org/content/style-sheet-service;1'].getService(Ci.nsIStyleSheetService);

	sss.loadAndRegisterSheet(uri, sss.AGENT_SHEET);

})();

