{
  programs.nixvim.plugins.bufferline = {
    enable = true;
    settings = {
      options = {
	mode = "buffers";
	themable = true;
	numbers = "ordinal";
	auto_toggle_bufferline = true;
	always_show_bufferline = true;
	buffer_close_icon = "x";
	modified_icon = "● ";
	close_icon = "X";
      };
    };
  };
}
