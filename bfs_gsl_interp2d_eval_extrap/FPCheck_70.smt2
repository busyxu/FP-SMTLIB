(declare-fun x1_ack!679 () (_ BitVec 64))
(declare-fun x0_ack!684 () (_ BitVec 64))
(declare-fun y0_ack!680 () (_ BitVec 64))
(declare-fun x_ack!682 () (_ BitVec 64))
(declare-fun y_ack!683 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z3_ack!681 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!684) ((_ to_fp 11 53) x1_ack!679))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!680) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!682) ((_ to_fp 11 53) x0_ack!684))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!682) ((_ to_fp 11 53) x1_ack!679)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!683) ((_ to_fp 11 53) y0_ack!680))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!683) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!683)
                                   ((_ to_fp 11 53) y0_ack!680))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!680))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!682)
                                   ((_ to_fp 11 53) x0_ack!684))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!679)
                                   ((_ to_fp 11 53) x0_ack!684)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW a!2 z3_ack!681))))

(check-sat)
(exit)
