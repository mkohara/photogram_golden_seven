Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/new",  {:controller => "photos", :action => "new_form"})
  get("/photos/:id",       { :controller => "photos", :action => "show" })

  get("/create_photo",  {:controller => "photos", :action=> "create_row"})
  #for destroy

  get("/delete_photo/:id",  {:controller => "photos", :action=> "destroy"})

  #update
  get("/photos/:id/edit", {:controller => "photos", :action =>"edit_form"})
  get("/update_photo/:id", {:controller => "photos", :action=>"update_row"})


end
