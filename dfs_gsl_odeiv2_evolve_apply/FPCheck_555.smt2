(declare-fun t_ack!5273 () (_ BitVec 64))
(declare-fun t1_ack!5274 () (_ BitVec 64))
(declare-fun h_ack!5275 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!5274)
                    ((_ to_fp 11 53) t_ack!5273))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!5274)
               ((_ to_fp 11 53) t_ack!5273))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!5275) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!5274)
                ((_ to_fp 11 53) t_ack!5273))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!5275)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!5274)
               ((_ to_fp 11 53) t_ack!5273))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe21360b60a7776
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) t1_ack!5274)
          ((_ to_fp 11 53) t_ack!5273))))

(check-sat)
(exit)
