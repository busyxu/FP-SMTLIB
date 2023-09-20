(declare-fun b_ack!2819 () (_ BitVec 64))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!2819))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
