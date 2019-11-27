
class Posterise
    def call
        image_path = '/Users/theopaul/Desktop/wallpaper/truck.jpg'
        set_wallpaper(image_path)
    end

    def get_images
        ACCESS = '18c04105ea6fd5b883f72dced34f395d6029a6f63edc09d2228b2b64d620a7d6'
        SECRET = 'e4279efeb40e8281734228ab038150105f7a49bd46e663a892555da188fc6611'

        
    end

    def set_wallpaper(image_path)
        command = "sudo osascript -e 'tell application \"System Events\" to set picture of every desktop to (\"#{image_path}\" as POSIX file as alias)'"
        puts "running: #{command}"
        system command
    end
end

Posterise.new.call
