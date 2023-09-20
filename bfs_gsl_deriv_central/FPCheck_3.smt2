(declare-fun h_ack!12 () (_ BitVec 64))
(declare-fun x_ack!13 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!13)
                    ((_ to_fp 11 53) h_ack!12))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW x_ack!13 h_ack!12))

(check-sat)
(exit)
