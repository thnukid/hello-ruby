#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
Product.delete_all
Product.create(title: 'CoffeeScript',
  description: 
    %{<p>
        CoffeeScript is JavaScript done right. It provides all of JavaScript's
	functionality wrapped in a cleaner, more succinct syntax. In the first
	book on this exciting new language, CoffeeScript guru Trevor Burnham
	shows you how to hold onto all the power and flexibility of JavaScript
	while writing clearer, cleaner, and safer code.
      </p>},
  image_url:   'cs.jpg',
  locale: 'en',
  price: 36.00)
# . . .
Product.create(title: 'CoffeeScript Espanol',
               description:
               %{<p>  CoffeeScript está bien hecho JavaScript. Proporciona todas JavaScript de funcionalidad envuelto en una sintaxis más limpia, más sucinto. En la primera libro sobre este lenguaje nuevo y emocionante, CoffeeScript gurú Trevor Burnham muestra cómo aferrarse a toda la potencia y flexibilidad de JavaScript al escribir más claro, más limpio, y el código más seguro.  </ p>},
               image_url:   'cs.jpg',
               locale: 'es',
               price: 36.00)

Product.create(title: 'Programming Ruby 1.9',
  description:
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  image_url: 'ruby.jpg',
  locale: 'en',
  price: 49.95)
# . . .
Product.create(title: 'Programming Ruby 1.9 Espanol',
               description:
               %{<p>  Ruby es el lenguaje dinámico de más rápido crecimiento y más emocionante  por ahí. Si usted necesita para obtener los programas de trabajo entregados rápido,  debe agregar Ruby a su caja de herramientas.  </ p>},
               image_url: 'ruby.jpg',
               locale: 'es',
               price: 49.95)

Product.create(title: 'Rails Test Prescriptions',
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: 'rtp.jpg',
    locale: 'en',
  price: 34.95)

Product.create(title: 'Rails Prescripciones de ensayo',
               description:
               %{<p>  <em> Rails Prueba recetas </ em> es una guía completa de las pruebas  Rails aplicaciones, cubriendo Test-Driven Development, tanto desde el  perspectiva teórica (¿por qué poner a prueba) y desde un punto de vista práctico  (cómo probar con eficacia). Cubre las herramientas de pruebas de Rails centrales y  procedimientos para Rails Rails 2 y 3, y presenta populares complementos,  incluyendo pepino, Shoulda, Maquinista, Mocha, y Rcov.  </ p>},
               image_url: 'rtp.jpg',
               locale: 'es',
               price: 34.95)

PayType.create(name: "Check")
PayType.create(name: "Credit card")
PayType.create(name: "Purchase order")




