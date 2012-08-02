
REDMINE_DIR=$(DESTDIR)/usr/share/redmine
PLUGIN_NAME=redmine_dnoise_workload
PLUGIN_DIR=$(REDMINE_DIR)/vendor/plugins/$(PLUGIN_NAME)

INSTALL_FILES=\
	redmine_dnoise_workload/*

all:

install:
	@rm -Rf $(PLUGIN_DIR)
	@mkdir -p $(PLUGIN_DIR) $(REDMINE_DIR)/public/plugin_assets
	@for i in $(INSTALL_FILES) ; do cp -R --preserve $$i $(PLUGIN_DIR) ; done
	@( cd $(REDMINE_DIR)/public/plugin_assets && ln -sf ../../vendor/plugins/$(PLUGIN_NAME)/assets $(PLUGIN_NAME) )
