require 'dragonfly/s3_data_store'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret "f3c89b1d54fa6f9ae8b41463a2ddbec2a841200914acc2e588846e64dd39a3f4"
  url_host 'http://d3ebkpuip3423r.cloudfront.net'
  # url_format "/:basename.:ext/media/:job/"
  # url_format "/:uid/"
  url_format "/:name"

  define_url do |app, job, opts| 
   # allows overriding urls - defaults to
    if job.step_types == [:fetch]    
         # app.server.url_for(job, opts)
      app.datastore.url_for(job.uid)
    else
       app.server.url_for(job, opts)
    end
  end

	if Rails.env.test?
	  datastore :file,
	    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
	    server_root: Rails.root.join('public')
	else
		datastore :s3,
			bucket_name: "aevisionz-snapshot-bucket",
			access_key_id: Rails.application.secrets.S3_KEY,
			secret_access_key: Rails.application.secrets.S3_SECRET,
			url_scheme: 'https'    
	end
end
# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end

