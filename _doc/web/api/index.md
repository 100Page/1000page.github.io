---
order: 0.4
title: web api
description: Web API
summary:
keywords:
- web
- web api
tags:
- web api
created_time: 2024-11-02 02:55
modified_time: 2024-11-05 21:49
---

# Web API
: 웹 브라우저에서 사용할 수 있는 인터페이스로 WebIDL을 사용해 정의됨  
: 벤더사 별로 WebIDL을 기반으로 브라우저에서 인터페이스를 구현  

**WebIDL**  
: Web Interface Definition Language  
: 웹 브라우저와 웹 애플리케이션 간의 인터페이스를 정의하기 위해 사용하는 언어  

```webidl
interface MyInterface {
  void method();
}
```


**Web Platform**
- [BOM](./bom-api/index.md)
- [DOM](./dom-api/index.md)
- [CSS](./css-api/index.md)
- [Encoding](./web-api/api-encoding.md)
- [Console](./web-api/api-console.md)
- [URL](./web-api/api-url.md)
- [File](./web-api/api-file.md)
- [File System](./web-api/api-file-system.md)
- [Fetch](./web-api/api-fetch.md)
- [XMLHttpRequest](./web-api/api-xmlhttprequest.md)
- [WebSocket](./web-api/api-web-socket.md)
- [Server Sent Events](./web-api/api-server-sent-events.md)
- [Web Messaging](./web-api/api-web-messaging.md)
- Broadcast Channel
- [Web Worker](./web-api/api-web-worker.md)
- [Worklet](./web-api/api-worklet.md)

**UI**
- [Notifications](./web-api/api-notification.md)
- [Fullscreen](./web-api/api-fullscreen.md)
- [Payment Request](./web-api/api-payment-request.md)
- [Intersection Observer](./web-api/api-intersection-observer.md)
- [Drag and Drop](./web-api/api-drag-and-drop.md)
- [Selection](./web-api/api-selection.md)
- [Clipboard](./web-api/api-clipboard.md)

**Storage**
- Storage
  - [Web Storage](./web-api/api-web-storage.md)
  - [IndexedDB](./web-api/api-indexed-db.md)
- [Streams](./web-api/api-stream.md)
- [Cookie Store](./web-api/api-cookie.md)
- [Application Cache](./web-api/api-application-cache.md)

**Web APP**
- [Service Worker](./web-api/api-service-worker.md)
- [Push](./web-api/api-push.md)
- [Web Share](./web-api/api-web-share.md)

**Device** 
- [Geolocation](./web-api/api-geolocation.md)
- [Pointer Events](./web-api/api-pointer-event.md)
- [Pointer Lock](./web-api/api-pointer-lock.md)
- [Sensor](./web-api/api-sensor.md)
- [Device](./web-api/api-device.md)

**Media**
- [WebRTC](./web-api/api-web-rtc.md)
- [Canvas](./web-api/api-canvas.md)
- [WebGL](./web-api/api-web-gl.md)
- [Web Audio](./web-api/api-web-audio.md)
- [Media Source](./web-api/api-media-source.md)
- [WebXR](./web-api/api-webxr.md)
- Media Capture and Streams
- Audio Worklet

**Security**
- [Web Authentication](./web-api/api-web-authn.md)
- [Web Cryptography](./web-api/api-web-crypto.md)
- [Permissions](./web-api/api-permission.md)
- [Content Security Policy](./web-api/api-csp.md)
- Credential Management

**Performance**
- [Performance](./web-api/api-performance.md)
- [Navigation Timing](./web-api/api-navigation-timing.md)
- [Resource Timing](./web-api/api-resource-timing.md)
- [Paint Timing](./web-api/api-paint.md)
- [Resize Observer](./web-api/api-resize-observer.md)