defmodule Twitterbot.TStream do
	def start(_opts) do
		pid = spawn(fn ->
		  stream = ExTwitter.stream_filter(track: "Elon Musk")
		  for tweet <- stream do
		    retweet(tweet)
		  end
		end)

		{:ok, pid}
	end

	def retweet(x) do
    if x.user.followers_count > 20000 do
      try do
        ExTwitter.retweet(x.id)
        IO.puts "retweeted #{x.id}"
      rescue
        e -> IO.puts "hit an issue"
      end
      nil
    else
    	nil
    end
  end
end