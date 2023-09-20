(declare-fun t_ack!80 () (_ BitVec 64))
(declare-fun t1_ack!78 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!79 () (_ BitVec 64))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!78)
                                  ((_ to_fp 11 53) t_ack!80)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!78)
                       ((_ to_fp 11 53) t_ack!80)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!78)
                       ((_ to_fp 11 53) t_ack!80))
               ((_ to_fp 11 53) t_ack!80))
       ((_ to_fp 11 53) t1_ack!78)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!78)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!78)
                       ((_ to_fp 11 53) t_ack!80)))
       ((_ to_fp 11 53) t_ack!80)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!78)
                    ((_ to_fp 11 53) t_ack!80))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!78)
               ((_ to_fp 11 53) t_ack!80))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW #x4024000000000000 y1_ack!79))

(check-sat)
(exit)
