module SinProjectsHelper
  def betterplace_donation_url(sin_project, lang: 'en')
    URI.parse(
      "http://#{Rails.configuration.betterplace_platform_host}/#{lang}/projects/#{sin_project.betterplace_id}/client_donations/new"
    )
  end

  def betterplace_platform_url(sin_project, lang: 'en')
    sin_project.betterplace_id.full? do |id|
      URI.parse(
        "http://#{Rails.configuration.betterplace_platform_host}/#{lang}/projects/%u" % id
      )
    end
  end
end