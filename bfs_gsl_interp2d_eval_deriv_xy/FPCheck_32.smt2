(declare-fun x1_ack!378 () (_ BitVec 64))
(declare-fun x0_ack!386 () (_ BitVec 64))
(declare-fun y0_ack!379 () (_ BitVec 64))
(declare-fun x_ack!384 () (_ BitVec 64))
(declare-fun y_ack!385 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!382 () (_ BitVec 64))
(declare-fun z1_ack!381 () (_ BitVec 64))
(declare-fun z3_ack!383 () (_ BitVec 64))
(declare-fun z0_ack!380 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!386) ((_ to_fp 11 53) x1_ack!378))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!379) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!384) ((_ to_fp 11 53) x0_ack!386))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!384) ((_ to_fp 11 53) x1_ack!378))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!385) ((_ to_fp 11 53) y0_ack!379))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!385) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!384) ((_ to_fp 11 53) x0_ack!386))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!384) ((_ to_fp 11 53) x1_ack!378))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!385) ((_ to_fp 11 53) y0_ack!379))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!385) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!378)
                                   ((_ to_fp 11 53) x0_ack!386)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!379)))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) z0_ack!380)
                                   ((_ to_fp 11 53) z3_ack!383))
                           ((_ to_fp 11 53) z1_ack!381))
                   ((_ to_fp 11 53) z2_ack!382))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!2)))

(check-sat)
(exit)
