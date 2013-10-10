module ApplicationHelper
	def render_navbar
		render :partial=>'common/navbar'
	end


	# renders an alert message
	# alert_type (String) can be one of alert-success, 
	# alert-info, alert-warning, alert-danger
	def render_notice(title, message, alert_type="alert-info")
		alert_types = ["alert-success", "alert-info", "alert-warning", "alert-danger"]
		raise ArgumentError, "alert_type must be one of #{alert_types}" unless alert_types.include? alert_type
		render :partial=>"common/flash",:locals=>{:title=>title,:alert_type=>alert_type,:message=>message}		
	end

end
