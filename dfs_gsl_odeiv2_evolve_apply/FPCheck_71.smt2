(declare-fun t_ack!592 () (_ BitVec 64))
(declare-fun t1_ack!593 () (_ BitVec 64))
(declare-fun h_ack!595 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!594 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!593)
                    ((_ to_fp 11 53) t_ack!592))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!593)
               ((_ to_fp 11 53) t_ack!592))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!595) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!593)
                ((_ to_fp 11 53) t_ack!592))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!595)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!593)
               ((_ to_fp 11 53) t_ack!592))))
(assert (FPCHECK_FMUL_ACCURACY #x3f95555555555555 y1_ack!594))

(check-sat)
(exit)
