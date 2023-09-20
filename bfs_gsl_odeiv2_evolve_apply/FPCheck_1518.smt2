(declare-fun t_ack!7451 () (_ BitVec 64))
(declare-fun t1_ack!7452 () (_ BitVec 64))
(declare-fun h_ack!7455 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7453 () (_ BitVec 64))
(declare-fun y1_ack!7454 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7452)
                    ((_ to_fp 11 53) t_ack!7451))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7452)
               ((_ to_fp 11 53) t_ack!7451))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!7455) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4024000000000000)
          ((_ to_fp 11 53) y1_ack!7454))
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) y0_ack!7453)
                  ((_ to_fp 11 53) y0_ack!7453))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
