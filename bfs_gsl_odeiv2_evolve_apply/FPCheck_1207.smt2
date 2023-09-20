(declare-fun t_ack!5795 () (_ BitVec 64))
(declare-fun t1_ack!5796 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!5797 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!5796)
                    ((_ to_fp 11 53) t_ack!5795))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!5796)
                    ((_ to_fp 11 53) t_ack!5795))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!5796)
                     ((_ to_fp 11 53) t_ack!5795))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!5796)
                    ((_ to_fp 11 53) t_ack!5795))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW t_ack!5795 h_ack!5797))

(check-sat)
(exit)
