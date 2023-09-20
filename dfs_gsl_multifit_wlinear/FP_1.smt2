(declare-fun e0_ack!42 () (_ BitVec 64))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e0_ack!42)
                    ((_ to_fp 11 53) e0_ack!42))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
