(declare-fun t_ack!197 () (_ BitVec 64))
(declare-fun t1_ack!195 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!196 () (_ BitVec 64))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!195)
                                  ((_ to_fp 11 53) t_ack!197)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!195)
                       ((_ to_fp 11 53) t_ack!197)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!195)
                       ((_ to_fp 11 53) t_ack!197))
               ((_ to_fp 11 53) t_ack!197))
       ((_ to_fp 11 53) t1_ack!195)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!195)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!195)
                       ((_ to_fp 11 53) t_ack!197)))
       ((_ to_fp 11 53) t_ack!197)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!195)
                    ((_ to_fp 11 53) t_ack!197))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!195)
               ((_ to_fp 11 53) t_ack!197))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!195)
                ((_ to_fp 11 53) t_ack!197))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) #x3eb0c6f7a0b5ed8d)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!195)
                    ((_ to_fp 11 53) t_ack!197)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!195)
                    ((_ to_fp 11 53) t_ack!197))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW #x3e6dd37f5698c2c1 y1_ack!196))

(check-sat)
(exit)
