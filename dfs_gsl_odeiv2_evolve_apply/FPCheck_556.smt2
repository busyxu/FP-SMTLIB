(declare-fun t_ack!5279 () (_ BitVec 64))
(declare-fun t1_ack!5280 () (_ BitVec 64))
(declare-fun h_ack!5281 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!5280)
                    ((_ to_fp 11 53) t_ack!5279))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!5280)
               ((_ to_fp 11 53) t_ack!5279))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!5281) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!5280)
                ((_ to_fp 11 53) t_ack!5279))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!5281)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!5280)
               ((_ to_fp 11 53) t_ack!5279))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe21360b60a7776
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) t1_ack!5280)
          ((_ to_fp 11 53) t_ack!5279))))

(check-sat)
(exit)
