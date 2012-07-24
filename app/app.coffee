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

  # create and setup a tab group
  tabGroup = Ti.UI.createTabGroup()
  tabGroup.addTab(tab)
  tabGroup.open()
