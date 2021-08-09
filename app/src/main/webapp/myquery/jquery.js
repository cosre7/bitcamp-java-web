function jQuery(p) {
  var el;
  if (p.charAt(0) == '<') { // 예) <table> /// 첫 문자가 <일 때  -> <로 시작할 때
    const template = document.createElement("template"); 
    template.innerHTML = p;
    el = template.content.children; /// tempTag : p태그의 자식 태그
  } else { /// 그 외 -> 첫 문자가 <가 아닐 때
    el = document.querySelectorAll(p); /// el은 태그가 들어있는 리스트. 태그가 아니다.
  }
  
  el.html = function(htmlString) {
    for (var e of el) {
      e.innerHTML = htmlString;
    }
    return el;
  };
  
  el.appendTo = function(selector) {
    var parents = document.querySelectorAll(selector); // 부모 찾기
    for (var parent of parents) {
      ///parent.appendChild(el); /// 부모에 자식 넣기 -> 불가능
      for (var child of el) { /// 부모에 자식 넣기 -> 반복문 사용 -> 가능
        parent.appendChild(child);
      }
    }
    return el;
  };
  
  el.on = function(eventName, handler) { /// 직접호출 -> 오리지널
    for (var e of el) {
      e.addEventListener(eventName, handler) /// vanilla.js -> 껍데기가 싫다!!
    }
    return el;
  };
  
  el.click = function(handler) { /// 간접호출 -> 껍데기..
    return el.on('click', handler);
  };
  
  el.change = function(handler) { 
      return el.on('change', handler);
    };
  
  return el; /// el : element list
}

jQuery.ajax = function(url, settings) {
  if (!settings) {
    settings = {};
  }
  
  if (!settings.dataType) {
    settings.dataType = "text";
  }
  
  if (!settings.method) {
    settings.method = "GET";
  }
  
   var xhr = new XMLHttpRequest();
   xhr.onreadystatechange = () => {
      if (xhr.readyState == 4) {
          if (xhr.status == 200) {
            if (settings.success) {
              if (settings.dataType == "text") {
                settings.success(xhr.responseText);
              } else if (settings.dataType == "json") {
                settings.success(JSON.parse(xhr.responseText));
              }
            }
          } else {
            if (setting.error) {
              setting.error();
            }
          }
      }
   };
   xhr.open(settings.method, url, true);
   
   if (settings.method == "POST") {
     xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
   }
   xhr.send();
};

var $ = jQuery; /// jQuery 함수 주소를 $에 담는다 -> 같은 주소를 가리킨다. => $는 함수 이름일 뿐
