(declare-fun a_ack!13 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!13) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!13) ((_ to_fp 11 53) #x1fff5de25335c4ee))))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4000000000000000)
               ((_ to_fp 11 53) a_ack!13))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
