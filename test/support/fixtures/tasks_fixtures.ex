defmodule TaskApp.TasksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `TaskApp.Tasks` context.
  """

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{
        copleted: true,
        description: "some description"
      })
      |> TaskApp.Tasks.create_task()

    task
  end
end
