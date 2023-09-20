(declare-fun t_ack!10218 () (_ BitVec 64))
(declare-fun t1_ack!10219 () (_ BitVec 64))
(declare-fun h_ack!10221 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!10220 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10219)
                    ((_ to_fp 11 53) t_ack!10218))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10219)
                    ((_ to_fp 11 53) t_ack!10218))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!10219)
                ((_ to_fp 11 53) t_ack!10218))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!10221)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10219)
                    ((_ to_fp 11 53) t_ack!10218)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10219)
                    ((_ to_fp 11 53) t_ack!10218))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY #x3fa887ad701404ac y1_ack!10220))

(check-sat)
(exit)
