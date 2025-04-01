import web from '@ohos.web.webview';

@Entry
@Component
struct Index {
  controller: web.WebviewController = new web.WebviewController();
  @State message: string = 'Hello World';

  build() {
    Column() {
      Web({
        src: $rawfile('h5/index.html'),
        controller: this.controller
      }).javaScriptAccess(true)
      .width('100%')
      .height('100%')
    }
    .width('100%')
    .height('100%')
  }
}