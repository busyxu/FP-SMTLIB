(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun p1_ack!83 () (_ BitVec 64))
(declare-fun x1_ack!86 () (_ BitVec 64))
(declare-fun p0_ack!87 () (_ BitVec 64))
(declare-fun x0_ack!85 () (_ BitVec 64))
(declare-fun p2_ack!84 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!84)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!85)
                                   ((_ to_fp 11 53) p0_ack!87)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!85)
                           ((_ to_fp 11 53) p0_ack!87))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!86)
                                   ((_ to_fp 11 53) p1_ack!83)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!86)
                           ((_ to_fp 11 53) p1_ack!83)))))
  (FPCHECK_FADD_OVERFLOW a!1 a!2)))

(check-sat)
(exit)
