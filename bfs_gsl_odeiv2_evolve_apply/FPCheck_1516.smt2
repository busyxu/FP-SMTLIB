(declare-fun t_ack!7431 () (_ BitVec 64))
(declare-fun t1_ack!7432 () (_ BitVec 64))
(declare-fun h_ack!7435 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7433 () (_ BitVec 64))
(declare-fun y1_ack!7434 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7432)
                    ((_ to_fp 11 53) t_ack!7431))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7432)
               ((_ to_fp 11 53) t_ack!7431))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!7435) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4024000000000000)
          ((_ to_fp 11 53) y1_ack!7434))
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) y0_ack!7433)
                  ((_ to_fp 11 53) y0_ack!7433))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
