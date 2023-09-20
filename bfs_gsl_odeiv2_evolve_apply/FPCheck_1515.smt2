(declare-fun t_ack!7427 () (_ BitVec 64))
(declare-fun t1_ack!7428 () (_ BitVec 64))
(declare-fun h_ack!7430 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!7429 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7428)
                    ((_ to_fp 11 53) t_ack!7427))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7428)
               ((_ to_fp 11 53) t_ack!7427))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!7430) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) y0_ack!7429)
          ((_ to_fp 11 53) y0_ack!7429))
  #x3ff0000000000000))

(check-sat)
(exit)
