(declare-fun h_ack!16 () (_ BitVec 64))
(declare-fun x_ack!17 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!17)
                    ((_ to_fp 11 53) h_ack!16))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW x_ack!17 h_ack!16))

(check-sat)
(exit)
