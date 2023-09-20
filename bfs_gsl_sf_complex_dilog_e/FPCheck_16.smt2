(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!52 () (_ BitVec 64))
(declare-fun a_ack!53 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!53)
                    (CF_sin b_ack!52))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!53)
                                   (CF_cos b_ack!52))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!53)
                                   (CF_cos b_ack!52)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!53)
                                   (CF_sin b_ack!52))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!53)
                                   (CF_sin b_ack!52))))))
  (FPCHECK_FSUB_UNDERFLOW a!1 #x3ff0000000000000)))

(check-sat)
(exit)
