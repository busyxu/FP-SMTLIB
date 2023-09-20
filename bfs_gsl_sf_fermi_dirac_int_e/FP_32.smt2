(declare-fun a_ack!491 () (_ BitVec 32))
(assert (not (bvslt a_ack!491 #xffffffff)))
(assert (not (= #xffffffff a_ack!491)))
(assert (not (= #x00000000 a_ack!491)))
(assert (not (= #x00000001 a_ack!491)))
(assert (not (= #x00000002 a_ack!491)))

(check-sat)
(exit)
