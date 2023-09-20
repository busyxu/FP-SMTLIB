(declare-fun a_ack!202 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!202) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x8000000000000000)
               ((_ to_fp 11 53) a_ack!202))
       ((_ to_fp 11 53) #x4000000000000000)))

(check-sat)
(exit)
