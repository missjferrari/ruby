class Blog

    @@all_posts = []
    @@total_posts = 0

    def Blog.all
        @@all_posts
    end
    
    def self.add(blogpost)
        @@all_posts << blogpost
        @@total_posts +=1
    end

    def self.publish
        @@all_posts.each do |post|
        puts "Title:\n #{post.title}"
        puts "Content:\n #{post.content}"
        puts "Publish Date:\n #{post.publish_date}"
        end
    end
end

class Post < Blog

    def self.create
        post = new
        puts "Please enter post title:"
        post.title = gets.chomp
        puts "Please enter post content:"
        post.content = gets.chomp
        post.publish_date = Time.now
        
        post.save

        puts "Do you want to create a new post? [Y/N]"

        create if gets.chomp.downcase == "y"
    end

    def title
        @title
    end

    def title=(title)
        @title = title
    end

    def publish_date
        @publish_date
    end

    def publish_date=(publish_date)
        @publish_date = publish_date
    end

    def content
        @content
    end

    def content=(content)
        @content = content
    end

    def save
        Post.add(self)
    end
end

Post.create
all_posts = Post.all
puts all_posts.inspect
Post.publish