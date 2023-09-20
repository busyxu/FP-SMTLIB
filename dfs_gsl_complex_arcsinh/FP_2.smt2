(declare-fun x_ack!34 () (_ BitVec 64))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!34))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
