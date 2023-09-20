(declare-fun t_ack!270 () (_ BitVec 64))
(declare-fun t1_ack!271 () (_ BitVec 64))
(declare-fun h_ack!274 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!273 () (_ BitVec 64))
(declare-fun y0_ack!272 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!271)
                    ((_ to_fp 11 53) t_ack!270))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!271)
               ((_ to_fp 11 53) t_ack!270))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!274) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!271)
                ((_ to_fp 11 53) t_ack!270))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!274)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!271)
               ((_ to_fp 11 53) t_ack!270))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!271)
                                   ((_ to_fp 11 53) t_ack!270)))
                   ((_ to_fp 11 53) y1_ack!273))))
  (FPCHECK_FADD_ACCURACY y0_ack!272 a!1)))

(check-sat)
(exit)
