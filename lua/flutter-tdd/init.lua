local M = {}

-- Your main function
function M.create_test()
    local root = vim.fn.finddir('.git/..', vim.fn.expand('%:p:h') .. ';')
    print(root)
    local current_file = vim.fn.expand('%:p')
    local file_name = vim.fn.expand('%:t:r')
    local test_file = string.gsub(current_file, "lib/", "test/") .. "_test.dart"

    -- Create the test directory if it doesn't exist
    local test_dir = vim.fn.fnamemodify(test_file, ':h')
    vim.fn.mkdir(test_dir, 'p')

    -- Create the test file if it doesn't exist
    if vim.fn.filereadable(test_file) == 0 then
        local file = io.open(test_file, 'w')
        if file then
            file:write(string.format([[
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('%s', () {
    test('should ', () {
      // Arrange

      // Act

      // Assert

    });
  });
}
]], file_name, file_name))
            file:close()
        end
    end

    -- Open the test file
    vim.cmd('edit ' .. test_file)
end

-- Setup function (optional)
function M.setup(opts)
    -- Create the command
    vim.api.nvim_create_user_command('CreateTest', M.create_test, {})
end

return M
