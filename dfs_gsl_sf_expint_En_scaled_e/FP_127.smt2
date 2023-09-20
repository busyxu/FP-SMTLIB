(declare-fun a_ack!2090 () (_ BitVec 32))
(assert (not (bvslt a_ack!2090 #x00000000)))
(assert (not (= #x00000000 a_ack!2090)))
(assert (= #x00000001 a_ack!2090))

(check-sat)
(exit)
