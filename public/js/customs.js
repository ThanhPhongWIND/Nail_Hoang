
$(function () {
    var inputFile = $('#file');
    $('#upload_single_bt').click(function (event) {
        var URI_single = $('#form-upload-single #file').attr('data-uri');
        var fileToUpload = inputFile[0].files[0];
        var formData = new FormData();
        formData.append('file', fileToUpload);
        $.ajax({
            url: URI_single,
            type: 'post',
            data: formData,
            contentType: false,
            processData: false,
            dataType: 'json',
            success: function (data) {
                console.log(data);
                if(data.status == 'ok'){
                     showThumbUpload(data);
                }
               
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(xhr.status);
                alert(thrownError);
            }
        });
        return false;
    });

    function  showThumbUpload(data) {
        var items;
        items = '<img src="' + data.file_path + '"/>';
        $('#show_list_file').html(items);
    }

});
/// JavaScript to control the overlay and popup
document.addEventListener("DOMContentLoaded", function() {
    var overlay = document.getElementById('overlay');
    var popupBackground = document.getElementById('popup-background');
    var closePopup = document.getElementById('close-popup');
  
    // Show overlay and popup when the page is loaded
    overlay.style.display = 'block';
    popupBackground.style.display = 'block';
  
    // Close the popup when clicking on the close button or overlay
    closePopup.onclick = function() {
      overlay.style.display = 'none';
      popupBackground.style.display = 'none';
    };
  
    overlay.onclick = function() {
      overlay.style.display = 'none';
      popupBackground.style.display = 'none';
    };
  });
  