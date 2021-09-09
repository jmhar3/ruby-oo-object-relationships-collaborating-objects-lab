class MP3Importer
    attr_accessor :path

    def initialize path
        @path = path
    end

    def files
        Dir.glob("#{@path}/*.mp3").map{ |data| data.gsub("#{@path}/", "") }
    end

    def import
        files.each{|data| Song.new_by_filename data}
    end
end