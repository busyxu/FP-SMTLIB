(declare-fun x1_ack!654 () (_ BitVec 64))
(declare-fun x0_ack!658 () (_ BitVec 64))
(declare-fun y0_ack!655 () (_ BitVec 64))
(declare-fun x_ack!656 () (_ BitVec 64))
(declare-fun y_ack!657 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!658) ((_ to_fp 11 53) x1_ack!654))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!655) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!656) ((_ to_fp 11 53) x0_ack!658))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!656) ((_ to_fp 11 53) x1_ack!654)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!657) ((_ to_fp 11 53) y0_ack!655))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!657) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!657)
                                   ((_ to_fp 11 53) y0_ack!655))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!655))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!656)
                    ((_ to_fp 11 53) x0_ack!658))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!654)
                    ((_ to_fp 11 53) x0_ack!658)))
    a!1)))

(check-sat)
(exit)
