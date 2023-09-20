(declare-fun x1_ack!641 () (_ BitVec 64))
(declare-fun x0_ack!649 () (_ BitVec 64))
(declare-fun y0_ack!642 () (_ BitVec 64))
(declare-fun x_ack!647 () (_ BitVec 64))
(declare-fun y_ack!648 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!645 () (_ BitVec 64))
(declare-fun z1_ack!644 () (_ BitVec 64))
(declare-fun z3_ack!646 () (_ BitVec 64))
(declare-fun z0_ack!643 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!649) ((_ to_fp 11 53) x1_ack!641))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!642) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!647) ((_ to_fp 11 53) x0_ack!649))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!647) ((_ to_fp 11 53) x1_ack!641))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!648) ((_ to_fp 11 53) y0_ack!642))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!648) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!647) ((_ to_fp 11 53) x0_ack!649))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!647) ((_ to_fp 11 53) x1_ack!641))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!648) ((_ to_fp 11 53) y0_ack!642))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!648) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!641)
                                   ((_ to_fp 11 53) x0_ack!649)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!642)))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) z0_ack!643)
                                   ((_ to_fp 11 53) z3_ack!646))
                           ((_ to_fp 11 53) z1_ack!644))
                   ((_ to_fp 11 53) z2_ack!645))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!2)))

(check-sat)
(exit)
