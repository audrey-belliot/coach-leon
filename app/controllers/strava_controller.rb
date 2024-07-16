class StravaController < ApplicationController
  def auth
    client = Strava::OAuth::Client.new(
      client_id: ENV['CLIENT_ID_STRAVA'],
      client_secret: ENV['CLIENT_SECRET_STRAVA']
    )
    puts ENV['CLIENT_ID_STRAVA']

    puts auth_strava_callback_url
    redirect_url = client.authorize_url(
      redirect_uri: auth_strava_callback_url,
      approval_prompt: 'force',
      response_type: 'code',
      scope: 'activity:read_all',
      state: 'magic'
    )
    redirect_to redirect_url, allow_other_host: true
    puts ENV['CLIENT_SECRET_STRAVA']
  end

  def callback
    client = Strava::OAuth::Client.new(
      client_id: ENV['CLIENT_ID_STRAVA'],
      client_secret: ENV['CLIENT_SECRET_STRAVA']
    )

    code = params[:code]
    response = client.oauth_token(code: code)

    session[:strava_access_token] = response.access_token
    session[:strava_refresh_token] = response.refresh_token
    session[:strava_token_expires_at] = response.expires_at

    #il faudra les mettre dans l'autre controller
    #puts athlete_client.athlete_activities.first
    redirect_to activities_logs_path, notice: "Connecté(e) à strava"
  end
end
