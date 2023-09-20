(declare-fun x1_ack!677 () (_ BitVec 64))
(declare-fun x0_ack!685 () (_ BitVec 64))
(declare-fun y0_ack!678 () (_ BitVec 64))
(declare-fun x_ack!683 () (_ BitVec 64))
(declare-fun y_ack!684 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!681 () (_ BitVec 64))
(declare-fun z1_ack!680 () (_ BitVec 64))
(declare-fun z3_ack!682 () (_ BitVec 64))
(declare-fun z0_ack!679 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!685) ((_ to_fp 11 53) x1_ack!677))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!678) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!683) ((_ to_fp 11 53) x0_ack!685))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!683) ((_ to_fp 11 53) x1_ack!677))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!684) ((_ to_fp 11 53) y0_ack!678))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!684) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!683) ((_ to_fp 11 53) x0_ack!685))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!683) ((_ to_fp 11 53) x1_ack!677))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!684) ((_ to_fp 11 53) y0_ack!678))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!684) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!677)
                                   ((_ to_fp 11 53) x0_ack!685)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!678)))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) z0_ack!679)
                                   ((_ to_fp 11 53) z3_ack!682))
                           ((_ to_fp 11 53) z1_ack!680))
                   ((_ to_fp 11 53) z2_ack!681))))
  (FPCHECK_FMUL_ACCURACY a!1 a!2)))

(check-sat)
(exit)
