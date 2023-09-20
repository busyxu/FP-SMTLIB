(declare-fun a_ack!58 () (_ BitVec 32))
(assert (not (bvslt a_ack!58 #x00000000)))
(assert (not (= #x00000001 a_ack!58)))
(assert (not (bvsle a_ack!58 #x00000064)))
(assert (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!58)
        ((_ to_fp 11 53) #x4014000000000000)))

(check-sat)
(exit)
