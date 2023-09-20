(declare-fun t_ack!7272 () (_ BitVec 64))
(declare-fun t1_ack!7273 () (_ BitVec 64))
(declare-fun h_ack!7276 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7274 () (_ BitVec 64))
(declare-fun y1_ack!7275 () (_ BitVec 64))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7273)
               ((_ to_fp 11 53) t_ack!7272))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7276) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7273)
                    ((_ to_fp 11 53) t_ack!7272))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4024000000000000)
          ((_ to_fp 11 53) y1_ack!7275))
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) y0_ack!7274)
                  ((_ to_fp 11 53) y0_ack!7274))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
