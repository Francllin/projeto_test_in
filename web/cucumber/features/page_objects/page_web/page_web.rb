
class SitewebInmetrics < SitePrism::Page
    # Elemento xpath para acessar a pagina quem somos
element :quemsomsos, :xpath, "//span[contains(text(),\'Quem Somos\')]"

end


class SitewebEnterpriseLogin < SitePrism::Page
    # Elemento para o login na plataforma
 element :username, "input[id='txtUsername']"
 element :passlogin, "input[id='txtPassword']"
 element :buttonlogin, "input[id='btnLogin']"

end