class Blogging::PostDefinition < Blogging::ResourceDefinition
  display :user, class: "col-span-full"
  display :title, class: "col-span-full"
  display :content, class: "col-span-full"
  display :published_at, class: "col-span-full"
end
