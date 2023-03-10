
module Crystal::Smuggle
    class Options
        def initialize
            @URL = ""
            @Pipeline = false
            @Method = "POST"
            @Headers = string[]
            @Timeout = 5
            @Output = ""
        end
    end
end