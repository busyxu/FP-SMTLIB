(declare-fun t_ack!7268 () (_ BitVec 64))
(declare-fun t1_ack!7269 () (_ BitVec 64))
(declare-fun h_ack!7271 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!7270 () (_ BitVec 64))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7269)
               ((_ to_fp 11 53) t_ack!7268))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7271) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7269)
                    ((_ to_fp 11 53) t_ack!7268))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) y0_ack!7270)
          ((_ to_fp 11 53) y0_ack!7270))
  #x3ff0000000000000))

(check-sat)
(exit)
