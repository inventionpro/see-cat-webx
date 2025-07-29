local animal = 'cat'

function view()
  local res = fetch({
    url = "https://api.fsh.plus/animal?animal=" .. animal,
    method = "GET"
  })

  get('meow').set_source(res.image)
end

get('more').on_click(function()
  view()
end)

view()