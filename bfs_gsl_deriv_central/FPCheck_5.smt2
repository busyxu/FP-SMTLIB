(declare-fun h_ack!20 () (_ BitVec 64))
(declare-fun x_ack!21 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!21)
                    ((_ to_fp 11 53) h_ack!20))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY x_ack!21 h_ack!20))

(check-sat)
(exit)
