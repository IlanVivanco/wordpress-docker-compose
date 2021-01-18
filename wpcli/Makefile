install: configure

configure:
	@echo "⚙️ Configuring Wordpress parameters..."
	wp core install \
		--url=${WORDPRESS_WEBSITE_URL_WITHOUT_HTTP} \
		--title="$(WORDPRESS_WEBSITE_TITLE)" \
		--admin_user=${WORDPRESS_ADMIN_USER} \
		--admin_password=${WORDPRESS_ADMIN_PASSWORD} \
		--admin_email=${WORDPRESS_ADMIN_EMAIL}

	# Options
	wp option update siteurl ${WORDPRESS_WEBSITE_URL}
	wp option update home_url ${WORDPRESS_WEBSITE_URL}
	wp rewrite structure $(WORDPRESS_WEBSITE_POST_URL_STRUCTURE)

	# Theme & plugins
	wp plugin delete hello akismet
	wp plugin install custom-post-type-ui query-monitor --activate
	wp plugin install http://connect.advancedcustomfields.com/index.php?p=pro&a=download&k=b3JkZXJfaWQ9MTAyMDUxfHR5cGU9ZGV2ZWxvcGVyfGRhdGU9MjAxNy0wMy0xNSAxODowNjozNA== --force --activate
	wp option add "acf_pro_license" "YToyOntzOjM6ImtleSI7czo3NjoiYjNKa1pYSmZhV1E5TVRBeU1EVXhmSFI1Y0dVOVpHVjJaV3h2Y0dWeWZHUmhkR1U5TWpBeE55MHdNeTB4TlNBeE9Eb3dOam96TkE9PSI7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9udG0tdGhlbWUudGVzdCI7fQ=="
	wp theme activate ntm-theme
