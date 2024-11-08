module Blogging
  module Posts
    class Publish < ResourceInteraction
      presents label: "Publish Post", icon: Phlex::TablerIcons::Send
      attribute :resource

      def execute
        if resource.update(published_at: Time.current)
          succeed(resource)
            .with_message("Post was successfully published")
        else
          failed(resource.errors)
        end
      end
    end
  end
end
