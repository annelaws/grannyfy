const checkbox = () => {
  $(document).ready(function(){
    $(".form-check").click(function(){
      $(this).toggleClass("active");
    });
  });
};
export { checkbox };
