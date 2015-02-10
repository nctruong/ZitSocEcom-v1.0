RailsAdmin.config do |config|
  config.authenticate_with do
    warden.authenticate! scope: :user
  end

  config.current_user_method(&:current_user)

  config.authorize_with :cancan

  config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  # config.included_models = ["Appconfig", "User", "UserRole", "Permission", "Product", "ProductCategory", "ProductUnit", "ProductUnitAssociation", "Warehouse", "Supplier", "SupplierOrder"] 

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    history_index
    history_show
  end
end
