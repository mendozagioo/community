class Form
  constructor: ->
    elements = $('.first, .second');

    elements.mouseover( ->
      $('.second:odd').find('a.edit').css({left: 20})
      $('.second:even, .first').find('a.edit').css({left: 0})
      pos = $(this).position()
      a = $(this).find('a.edit')
      toptmp = parseInt(a[0].style.left.replace('px',''), 10)
      a.css({top: (pos.top + $(this).height()) - 20, left: (pos.left + toptmp) + 20});
      a.show();
    )

    elements.mouseout( ->
      $('.second:odd').find('a.edit').css({left: 20})
      $('.second:even, .first').find('a.edit').css({left: 0})
      $(this).find('a.edit').hide();
    )

App.Utilities.Form = Form