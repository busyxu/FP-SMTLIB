(declare-fun t_ack!163 () (_ BitVec 64))
(declare-fun t1_ack!164 () (_ BitVec 64))
(declare-fun h_ack!167 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!165 () (_ BitVec 64))
(declare-fun y1_ack!166 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!164)
                    ((_ to_fp 11 53) t_ack!163))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!164)
               ((_ to_fp 11 53) t_ack!163))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!167) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!166))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!165)
                                   ((_ to_fp 11 53) y0_ack!165))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) #x8000000000000000)
            ((_ to_fp 11 53) y0_ack!165))
    a!1)))

(check-sat)
(exit)
