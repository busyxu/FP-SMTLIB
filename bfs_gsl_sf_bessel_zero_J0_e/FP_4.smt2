(declare-fun a_ack!27 () (_ BitVec 32))
(assert (not (= #x00000000 a_ack!27)))

(check-sat)
(exit)
