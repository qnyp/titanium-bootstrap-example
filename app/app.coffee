if Ti.version < 1.8
  alert('Sorry - this application template requires Titanium Mobile SDK 1.8 or later')

do ->
  # create a window contains webview
  window = Ti.UI.createWindow
    title: L('home')
    backgroundColor:'white'
  webView = Ti.UI.createWebView
    url: 'index.html'  # Resources/index.html
  window.add(webView)

  # create a tab contains window
  tab = Ti.UI.createTab
    title: L('home')
    icon: '/images/KS_nav_ui.png'
    window: window
  window.containingTab = tab

  # create a tab group
  tabGroup = Ti.UI.createTabGroup()
  tabGroup.addTab(tab)

  # set event listener
  Ti.App.addEventListener 'onLinkTap', (params) ->
    filename = params.filename;
    newWindow = Ti.UI.createWindow
      title: filename
      backgroundColor:'white'
    webView = Ti.UI.createWebView
      url: filename
    newWindow.add(webView)
    window.containingTab.open(newWindow)

  # open a tab group
  tabGroup.open()
