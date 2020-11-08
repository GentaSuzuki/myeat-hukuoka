// ページが読み込まれたら実行
window.onload = function() {

  // オブジェクトと変数の準備
  var star_count = document.getElementById("star-count");  
  var count_up_btn = document.getElementById("btn_count_up");
  var count_value = 0;
  localStorage.setItem('star-count','count_value')
  // カウントアップボタンクリック処理
  count_up_btn.onclick = function (){
       count_value += 1;
       star_count.innerHTML = count_value;
  };
  // カウントアップボタンのマウスダウン処理
  count_up_btn.onmousedown = function() {
       count_up_btn.style.backgroundColor = "#00FF00";
  }
  // カウントアップボタンのマウスアップ処理
  count_up_btn.onmouseup = function() {
       count_up_btn.style.backgroundColor = "";
  }
};