(declare-fun h_ack!66 () (_ BitVec 64))
(declare-fun x_ack!67 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!67)
                    ((_ to_fp 11 53) h_ack!66))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY h_ack!66 #x4000000000000000))

(check-sat)
(exit)
