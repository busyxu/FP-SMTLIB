(declare-fun x1_ack!414 () (_ BitVec 64))
(declare-fun x0_ack!422 () (_ BitVec 64))
(declare-fun y0_ack!415 () (_ BitVec 64))
(declare-fun x_ack!420 () (_ BitVec 64))
(declare-fun y_ack!421 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!418 () (_ BitVec 64))
(declare-fun z1_ack!417 () (_ BitVec 64))
(declare-fun z3_ack!419 () (_ BitVec 64))
(declare-fun z0_ack!416 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!422) ((_ to_fp 11 53) x1_ack!414))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!415) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!420) ((_ to_fp 11 53) x0_ack!422))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!420) ((_ to_fp 11 53) x1_ack!414))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!421) ((_ to_fp 11 53) y0_ack!415))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!421) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!420) ((_ to_fp 11 53) x0_ack!422))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!420) ((_ to_fp 11 53) x1_ack!414))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!421) ((_ to_fp 11 53) y0_ack!415))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!421) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!414)
                                   ((_ to_fp 11 53) x0_ack!422)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!415)))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) z0_ack!416)
                                   ((_ to_fp 11 53) z3_ack!419))
                           ((_ to_fp 11 53) z1_ack!417))
                   ((_ to_fp 11 53) z2_ack!418))))
  (FPCHECK_FMUL_ACCURACY a!1 a!2)))

(check-sat)
(exit)
