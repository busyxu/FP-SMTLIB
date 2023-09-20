(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun p1_ack!128 () (_ BitVec 64))
(declare-fun x1_ack!131 () (_ BitVec 64))
(declare-fun p0_ack!132 () (_ BitVec 64))
(declare-fun x0_ack!130 () (_ BitVec 64))
(declare-fun p2_ack!129 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!129)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!130)
                                   ((_ to_fp 11 53) p0_ack!132)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!130)
                           ((_ to_fp 11 53) p0_ack!132))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!131)
                                   ((_ to_fp 11 53) p1_ack!128)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!131)
                           ((_ to_fp 11 53) p1_ack!128)))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven a!1 a!2)
    #x0000000000000000)))

(check-sat)
(exit)
