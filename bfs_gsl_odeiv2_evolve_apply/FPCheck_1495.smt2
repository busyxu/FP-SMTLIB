(declare-fun t_ack!7252 () (_ BitVec 64))
(declare-fun t1_ack!7253 () (_ BitVec 64))
(declare-fun h_ack!7255 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!7254 () (_ BitVec 64))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7253)
               ((_ to_fp 11 53) t_ack!7252))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7255) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7253)
                    ((_ to_fp 11 53) t_ack!7252))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) y0_ack!7254)
          ((_ to_fp 11 53) y0_ack!7254))
  #x3ff0000000000000))

(check-sat)
(exit)
