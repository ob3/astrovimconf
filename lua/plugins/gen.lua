
return {
  "David-Kunz/gen.nvim",
  opts = {
    model = "deepseek-coder", -- The default model to use.
    display_mode = "split", -- The display mode. Can be "float", "split", "replace".
    show_prompt = false, -- Shows the prompt submitted to the LLM.
    show_model = false, -- Displays which model is being used at the beginning of the response.
    no_auto_close = false, -- Never closes the window automatically.
    init = function(options) pcall(io.popen, "ollama serve > /dev/null 2>&1 &") end,
    -- Function to initialize the LLM provider
    command = "curl --silent --no-buffer -X POST http://localhost:11434/api/generate -d \"{\"model\": \"%s\", \"prompt\": \"%s\"}\",",
  },
}
