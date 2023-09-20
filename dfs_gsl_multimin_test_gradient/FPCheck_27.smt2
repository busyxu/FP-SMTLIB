(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun p1_ack!118 () (_ BitVec 64))
(declare-fun x1_ack!121 () (_ BitVec 64))
(declare-fun p0_ack!122 () (_ BitVec 64))
(declare-fun x0_ack!120 () (_ BitVec 64))
(declare-fun p2_ack!119 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!119)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!120)
                                   ((_ to_fp 11 53) p0_ack!122)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!120)
                           ((_ to_fp 11 53) p0_ack!122))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!121)
                                   ((_ to_fp 11 53) p1_ack!118)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!121)
                           ((_ to_fp 11 53) p1_ack!118)))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven a!1 a!2)
    #x0000000000000000)))

(check-sat)
(exit)
