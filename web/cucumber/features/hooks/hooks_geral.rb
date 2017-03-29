 Before '@geral' do
    # Estanciando as variaveis.
    @componente = SitewebInmetrics.new
    @homeinmetrics = HomeInmetrics.new
    @homeenterprise = HomeEnterprise.new
    @loginenterprise = SitewebEnterpriseLogin.new

    # Elemento fake para teste.
    @lorem = Faker::Lorem.paragraph
    @name = Faker::Name.name

    end