(declare-fun h_ack!70 () (_ BitVec 64))
(declare-fun x_ack!71 () (_ BitVec 64))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!71)
                    ((_ to_fp 11 53) h_ack!70))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
