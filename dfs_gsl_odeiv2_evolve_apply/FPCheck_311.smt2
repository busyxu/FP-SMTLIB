(declare-fun t_ack!2889 () (_ BitVec 64))
(declare-fun t1_ack!2890 () (_ BitVec 64))
(declare-fun h_ack!2892 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!2891 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2890)
                    ((_ to_fp 11 53) t_ack!2889))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!2890)
               ((_ to_fp 11 53) t_ack!2889))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!2892) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!2890)
                ((_ to_fp 11 53) t_ack!2889))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!2892)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!2890)
               ((_ to_fp 11 53) t_ack!2889))))
(assert (FPCHECK_FMUL_ACCURACY #x3fa887ad701404ac y1_ack!2891))

(check-sat)
(exit)
