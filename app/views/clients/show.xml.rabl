object @client
attributes :id, :name, :company, :email
node(:edit_url) {|client| edit_client_url (@client)}

child :user do
 attributes :id, :email
end

child :project1s do 
 attributes :id, :name

end