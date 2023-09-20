(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun p1_ack!108 () (_ BitVec 64))
(declare-fun x1_ack!111 () (_ BitVec 64))
(declare-fun p0_ack!112 () (_ BitVec 64))
(declare-fun x0_ack!110 () (_ BitVec 64))
(declare-fun p2_ack!109 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) p2_ack!109)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!110)
                                   ((_ to_fp 11 53) p0_ack!112)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!110)
                           ((_ to_fp 11 53) p0_ack!112))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!111)
                                   ((_ to_fp 11 53) p1_ack!108)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!111)
                           ((_ to_fp 11 53) p1_ack!108)))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven a!1 a!2)
    #x0000000000000000)))

(check-sat)
(exit)
