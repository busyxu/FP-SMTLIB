(declare-fun a_ack!12 () (_ BitVec 32))
(assert (not (bvsle a_ack!12 #x00000000)))
(assert (not (bvsle a_ack!12 #x00000064)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!12)
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
