require "command_mine/version"

module CommandMine
  def self.say_hi
    begin
      `say hi`
    rescue e => Exception
      `espeak hi`
    end
  end
end
