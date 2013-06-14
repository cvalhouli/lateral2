module Paperclip
    class Cropper < Thumbnail
        def initialize(file, options = {}, attachment = nil)
            super
            @current_geometry.width = target.crop_w.to_f
            @current_geometry.height = target.crop_h.to_f
        end
        def target
            @attachment.instance
        end
        def transformation_command
            crop_command = [
            "-crop",
            "#{target.crop_w.to_i}x" \
            "#{target.crop_h.to_i}+" \
            "#{target.crop_x.to_i}+" \
            "#{target.crop_y.to_i}",
            "+repage"
            ]
            crop_command + super
        end
    end
end