(declare-fun h_ack!204 () (_ BitVec 64))
(declare-fun x_ack!205 () (_ BitVec 64))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!205)
                    ((_ to_fp 11 53) h_ack!204))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
