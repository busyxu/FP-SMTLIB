(declare-fun a_ack!51 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!51) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!51))
               ((_ to_fp 11 53) a_ack!51))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!51)))
       ((_ to_fp 11 53) a_ack!51)))

(check-sat)
(exit)
