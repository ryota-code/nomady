$(document).on('turbolinks:load', function() {
$(function(){
      // ドロップダウンメニュー
  $('.dropdown-btn').hover(
    function() {
      //カーソルが重なった時
      $(this).children('.dropdown').addClass('open');
    }, function() {
      //カーソルが離れた時
      $(this).children('.dropdown').removeClass('open');
    }
  );
   
  // グローバルナビの開閉
  $(function() {
    $('.nav-button-wrap').on('click', function() {
      if ($(this).hasClass('active')) {
        // スマホ用メニューが表示されていたとき
        $(this).removeClass('active');
        $('.globalnav').addClass('close');
        $('.globalnav-wrap , body').removeClass('open');
      } else {
        // スマホ用メニューが非表示の時
        $(this).addClass('active');
        $('.globalnav').removeClass('close');
        $('.globalnav-wrap , body').addClass('open');
      }
    });
  });
});

})