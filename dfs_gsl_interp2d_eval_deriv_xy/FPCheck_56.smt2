(declare-fun x1_ack!659 () (_ BitVec 64))
(declare-fun x0_ack!667 () (_ BitVec 64))
(declare-fun y0_ack!660 () (_ BitVec 64))
(declare-fun x_ack!665 () (_ BitVec 64))
(declare-fun y_ack!666 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!663 () (_ BitVec 64))
(declare-fun z1_ack!662 () (_ BitVec 64))
(declare-fun z3_ack!664 () (_ BitVec 64))
(declare-fun z0_ack!661 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!667) ((_ to_fp 11 53) x1_ack!659))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!660) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!665) ((_ to_fp 11 53) x0_ack!667))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!665) ((_ to_fp 11 53) x1_ack!659))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!666) ((_ to_fp 11 53) y0_ack!660))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!666) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!665) ((_ to_fp 11 53) x0_ack!667))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!665) ((_ to_fp 11 53) x1_ack!659))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!666) ((_ to_fp 11 53) y0_ack!660))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!666) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!659)
                                   ((_ to_fp 11 53) x0_ack!667)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!660)))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) z0_ack!661)
                                   ((_ to_fp 11 53) z3_ack!664))
                           ((_ to_fp 11 53) z1_ack!662))
                   ((_ to_fp 11 53) z2_ack!663))))
  (FPCHECK_FMUL_UNDERFLOW a!1 a!2)))

(check-sat)
(exit)
