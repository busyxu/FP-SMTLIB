(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun p1_ack!103 () (_ BitVec 64))
(declare-fun x1_ack!106 () (_ BitVec 64))
(declare-fun p0_ack!107 () (_ BitVec 64))
(declare-fun x0_ack!105 () (_ BitVec 64))
(declare-fun p2_ack!104 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!104)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!105)
                                   ((_ to_fp 11 53) p0_ack!107)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!105)
                           ((_ to_fp 11 53) p0_ack!107))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!106)
                                   ((_ to_fp 11 53) p1_ack!103)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!106)
                           ((_ to_fp 11 53) p1_ack!103)))))
  (FPCHECK_FADD_ACCURACY a!1 a!2)))

(check-sat)
(exit)
