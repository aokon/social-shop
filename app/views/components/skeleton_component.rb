# frozen_string_literal: true

class SkeletonComponent < ApplicationComponent
  def view_template
    div(**classes("bg-gray-200 p-4 mb-10 rounded-md test-fake-result")) {
      div(**classes("animate-pulse space-y-4")) {
        animated_content
      }
    }
  end

  private

  def animated_content
    div(**classes("flex items-center")) {
      div(**classes("h-6 w-6 bg-gray-300 rounded-full")) {}
      div(**classes("ml-3 w-1/4 bg-gray-300 h-4")) {}
    }
    div(**classes("w-1/2 h-4 bg-gray-300")) {}
    div(**classes("w-3/4 h-4 bg-gray-300")) {}
    div(**classes("w-1/3 h-4 bg-gray-300")) {}
  end
end
