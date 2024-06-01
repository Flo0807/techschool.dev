defmodule Techschool.Helpers.ResetDb do
  alias Techschool.Repo

  def call do
    # List all your Ecto schemas here
    tables = [
      Techschool.Languages.Language,
      Techschool.Frameworks.Framework,
      Techschool.Tools.Tool,
      Techschool.Fundamentals.Fundamental,
      Techschool.Channels.Channel,
      Techschool.Lessons.Lesson,
      Techschool.Courses.Course,
      Techschool.Platforms.Platform,
      Techschool.Bootcamps.Bootcamp
    ]

    Enum.each(tables, &Repo.delete_all/1)
  end
end
