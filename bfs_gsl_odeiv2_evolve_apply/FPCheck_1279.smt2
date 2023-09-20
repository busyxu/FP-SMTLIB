(declare-fun t_ack!6143 () (_ BitVec 64))
(declare-fun t1_ack!6144 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!6145 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!6144)
                    ((_ to_fp 11 53) t_ack!6143))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!6144)
                    ((_ to_fp 11 53) t_ack!6143))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!6144)
                     ((_ to_fp 11 53) t_ack!6143))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!6144)
                    ((_ to_fp 11 53) t_ack!6143))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW #x3f9e433298ed3291 y1_ack!6145))

(check-sat)
(exit)
