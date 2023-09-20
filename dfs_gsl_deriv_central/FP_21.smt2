(declare-fun h_ack!266 () (_ BitVec 64))
(declare-fun x_ack!267 () (_ BitVec 64))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!267)
                    ((_ to_fp 11 53) h_ack!266))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
