(window.webpackJsonp=window.webpackJsonp||[]).push([[7],{cfzq:function(t,r,e){"use strict";e.d(r,"a",(function(){return u}));var s=e("AytR"),i=e("z6cu"),n=e("JIr8"),o=e("fXoL"),a=e("tk/3");let u=(()=>{class t{constructor(t){this.http=t,this.uri=s.a.URI_BASE+"regions"}getAll(){return this.http.get(this.uri).pipe(Object(n.a)(this.handleError))}handleError(t){let r;return r=t.error instanceof ErrorEvent?"Error: do it again":0===t.status?"The server is shutdown":t.error.message,Object(i.a)(r)}}return t.\u0275fac=function(r){return new(r||t)(o.Zb(a.b))},t.\u0275prov=o.Ib({token:t,factory:t.\u0275fac}),t})()},ctl9:function(t,r,e){"use strict";e.d(r,"a",(function(){return u}));var s=e("AytR"),i=e("z6cu"),n=e("JIr8"),o=e("fXoL"),a=e("tk/3");let u=(()=>{class t{constructor(t){this.http=t,this.uri=s.a.URI_BASE+"touristspots"}getCategoriesParams(t){let r="";return 0!==t.length&&t.forEach((function(t){r+="&categories="+t})),r}getAll(t,r,e,s){const i=this.getCategoriesParams(t);return this.http.get(this.uri+"?region="+r+i+"&page="+e+"&resultsPerPage="+s).pipe(Object(n.a)(this.handleError))}get(t){return this.http.get(this.uri+"/"+t).pipe(Object(n.a)(this.handleError))}create(t){return this.http.post(this.uri,t).pipe(Object(n.a)(this.handleError))}handleError(t){let r;return r=t.error instanceof ErrorEvent?"Error: do it again":0===t.status?"The server is shutdown":t.error.errors,Object(i.a)(r)}}return t.\u0275fac=function(r){return new(r||t)(o.Zb(a.b))},t.\u0275prov=o.Ib({token:t,factory:t.\u0275fac}),t})()},hcQD:function(t,r,e){"use strict";e.d(r,"a",(function(){return u}));var s=e("z6cu"),i=e("JIr8"),n=e("AytR"),o=e("fXoL"),a=e("tk/3");let u=(()=>{class t{constructor(t){this.http=t,this.uri=n.a.URI_BASE+"lodgings"}getAll(t){let r=this.uri+"?checkin="+t.checkIn+"&checkout="+t.checkOut+"&touristspot="+t.touristSpot+"&adults="+t.adults+"&babies="+t.babies+"&children="+t.children+"&retirees="+t.retirees+"&page="+t.page+"&resultsPerPage="+t.resultsPerPage;return null!=t.isFull&&(r+="&isFull="+(t.isFull?"true":"false")),this.http.get(r).pipe(Object(i.a)(this.handleError))}create(t){return this.http.post(this.uri,t).pipe(Object(i.a)(this.handleError))}update(t){return this.http.put(this.uri+"/"+t,{}).pipe(Object(i.a)(this.handleError))}delete(t){return this.http.delete(this.uri+"/"+t,{}).pipe(Object(i.a)(this.handleError))}getReviews(t,r,e){return this.http.get(this.uri+"/"+t+"/reviews?page="+r+"&resultsPerPage="+e).pipe(Object(i.a)(this.handleError))}handleError(t){let r;return r=t.error instanceof ErrorEvent?{connection:"Error, do you have an active internet connection?"}:0===t.status?{connection:"The server is shutdown"}:t.error.errors,Object(s.a)(r)}}return t.\u0275fac=function(r){return new(r||t)(o.Zb(a.b))},t.\u0275prov=o.Ib({token:t,factory:t.\u0275fac,providedIn:"root"}),t})()}}]);