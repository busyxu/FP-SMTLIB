(declare-fun t_ack!6902 () (_ BitVec 64))
(declare-fun t1_ack!6903 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!6904 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!6903)
                    ((_ to_fp 11 53) t_ack!6902))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!6903)
                    ((_ to_fp 11 53) t_ack!6902))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!6903)
                     ((_ to_fp 11 53) t_ack!6902))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!6903)
                    ((_ to_fp 11 53) t_ack!6902))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY t_ack!6902 h_ack!6904))

(check-sat)
(exit)
