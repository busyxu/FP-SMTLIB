(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun p1_ack!93 () (_ BitVec 64))
(declare-fun x1_ack!96 () (_ BitVec 64))
(declare-fun p0_ack!97 () (_ BitVec 64))
(declare-fun x0_ack!95 () (_ BitVec 64))
(declare-fun p2_ack!94 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!94)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!95)
                                   ((_ to_fp 11 53) p0_ack!97)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!95)
                           ((_ to_fp 11 53) p0_ack!97))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!96)
                                   ((_ to_fp 11 53) p1_ack!93)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!96)
                           ((_ to_fp 11 53) p1_ack!93)))))
  (FPCHECK_FADD_UNDERFLOW a!1 a!2)))

(check-sat)
(exit)
