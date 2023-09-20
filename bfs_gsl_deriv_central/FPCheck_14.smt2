(declare-fun h_ack!60 () (_ BitVec 64))
(declare-fun x_ack!61 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!61)
                    ((_ to_fp 11 53) h_ack!60))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW h_ack!60 #x4000000000000000))

(check-sat)
(exit)
