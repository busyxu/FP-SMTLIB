(declare-fun x1_ack!785 () (_ BitVec 64))
(declare-fun x0_ack!789 () (_ BitVec 64))
(declare-fun y0_ack!786 () (_ BitVec 64))
(declare-fun x_ack!787 () (_ BitVec 64))
(declare-fun y_ack!788 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!789) ((_ to_fp 11 53) x1_ack!785))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!786) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!787) ((_ to_fp 11 53) x0_ack!789))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!787) ((_ to_fp 11 53) x1_ack!785)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!788) ((_ to_fp 11 53) y0_ack!786))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!788) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!787)
                                   ((_ to_fp 11 53) x0_ack!789))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!785)
                                   ((_ to_fp 11 53) x0_ack!789))))))
  (FPCHECK_FMUL_OVERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y_ack!788)
                    ((_ to_fp 11 53) y0_ack!786))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) y0_ack!786))))))

(check-sat)
(exit)
