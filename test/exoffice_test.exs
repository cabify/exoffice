defmodule ExofficeTest do
  use ExUnit.Case

  describe "parse options" do
    test "use CSV options" do
      [{:ok, pid, parser}] = Exoffice.parse("./test/test_data/test_semicolon.csv", parser_options: [separator: ?;])

      expected = [
        ["2", "23", "23", "2", "asg", "2", "sadg"],
        ["sd", "123", "2", "3", "12", "", "23"],
        ["g", "", "", "1", "", "1", ""],
        ["2016-01-01", "", "", "", "3", "", ""],
        ["", "", "", "", "", "", ""],
        ["", "", "", "", "", "", ""],
        ["", "", "", "", "", "", ""],
        ["", "", "", "", "", "", ""],
        ["", "", "", "", "", "", ""],
        ["", "", "", "", "", "", ""],
        ["", "", "", "", "", "", ""],
        ["", "", "", "", "", "", ""],
        ["", "", "", "", "", "", ""],
        ["", "", "", "", "", "", ""],
        ["", "", "", "", "", "", ""],
        ["", "", "", "", "", "", ""],
        ["", "", "", "", "", "", ""],
        ["", "", "", "", "", "", ""],
        ["", "", "", "", "", "", ""],
        ["", "", "", "", "", "", ""],
        ["", "", "", "", "", "", ""],
        ["", "", "", "", "", "", ""]
      ]

      assert is_pid(pid)
      assert Exoffice.get_rows(pid, parser) |> Enum.to_list() == expected
    end
  end
end
