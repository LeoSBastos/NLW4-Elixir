defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "when there is a file with the given name, returns the sum of numbers" do
      response = Numbers.sum_from_file("numbers")

      expected_reponse = {:ok, %{result: 37}}

      assert response == expected_reponse
    end

    test "when there is not a file with the given name, returns an error" do
      response = Numbers.sum_from_file("banana")

      expected_reponse = {:error, %{message: "Invalid file!"}}

      assert response == expected_reponse
    end
  end
end
