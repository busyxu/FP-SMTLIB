(declare-fun t_ack!7441 () (_ BitVec 64))
(declare-fun t1_ack!7442 () (_ BitVec 64))
(declare-fun h_ack!7445 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7443 () (_ BitVec 64))
(declare-fun y1_ack!7444 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7442)
                    ((_ to_fp 11 53) t_ack!7441))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7442)
               ((_ to_fp 11 53) t_ack!7441))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!7445) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4024000000000000)
          ((_ to_fp 11 53) y1_ack!7444))
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) y0_ack!7443)
                  ((_ to_fp 11 53) y0_ack!7443))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
