(define (domain hacer-pollito)
    (:predicates (mantequilla-derretida)
             (tener-mantequilla)
             (estufa-on)
             (pollo-cocido)
             (tener-pollo)
             (tener-sarten)
             (sarten-caliente)
             (polloEnRecipiente)
             (tener-recipiente)
             (pollo ?x)
             (mantequilla ?x)
             (recipiente ?x)
             (sarten ?x))


    (:action get-sarten
        :parameters (?x)
        :precondition (and (sarten ?x))
        :effect (tener-sarten)
    )
    
    
    (:action put-sarten
            :parameters ()
            :precondition (and (estufa-on) (tener-sarten))
            :effect (sarten-caliente)
    )

    (:action get-mantequilla
        :parameters (?x)
        :precondition (mantequilla ?x)
        :effect (tener-mantequilla)
    )

    (:action put-mantequilla
        :parameters ()
        :precondition (and (tener-mantequilla) (sarten-caliente))
        :effect (and (mantequilla-derretida))
    )

    (:action get-pollo
        :parameters (?x)
        :precondition (pollo ?x)
        :effect (tener-pollo)
    )
    
    (:action put-pollo
        :parameters ()
        :precondition (and (mantequilla-derretida) (tener-pollo))
        :effect (pollo-cocido)
    )

    (:action get-recipiente
        :parameters (?x)
        :precondition (and (recipiente ?x))
        :effect (and (tener-recipiente))
    )

    (:action servir-pollo
        :parameters ()
        :precondition (and (tener-recipiente) (pollo-cocido))
        :effect (and (polloEnRecipiente))
    )
    
)