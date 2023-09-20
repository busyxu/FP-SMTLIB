(declare-fun a_ack!27 () (_ BitVec 32))
(assert (not (bvslt a_ack!27 #x00000000)))
(assert (not (= #x00000000 a_ack!27)))
(assert (not (= #x00000001 a_ack!27)))

(check-sat)
(exit)
