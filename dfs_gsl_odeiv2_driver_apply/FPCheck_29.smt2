(declare-fun t_ack!156 () (_ BitVec 64))
(declare-fun t1_ack!153 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!154 () (_ BitVec 64))
(declare-fun y1_ack!155 () (_ BitVec 64))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!153)
                                  ((_ to_fp 11 53) t_ack!156)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!153)
                       ((_ to_fp 11 53) t_ack!156)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!153)
                       ((_ to_fp 11 53) t_ack!156))
               ((_ to_fp 11 53) t_ack!156))
       ((_ to_fp 11 53) t1_ack!153)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!153)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!153)
                       ((_ to_fp 11 53) t_ack!156)))
       ((_ to_fp 11 53) t_ack!156)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!153)
                    ((_ to_fp 11 53) t_ack!156))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!153)
               ((_ to_fp 11 53) t_ack!156))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4024000000000000)
          ((_ to_fp 11 53) y1_ack!155))
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) y0_ack!154)
                  ((_ to_fp 11 53) y0_ack!154))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
