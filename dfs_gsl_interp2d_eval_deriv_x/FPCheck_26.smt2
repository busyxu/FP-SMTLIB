(declare-fun x1_ack!236 () (_ BitVec 64))
(declare-fun x0_ack!241 () (_ BitVec 64))
(declare-fun y0_ack!237 () (_ BitVec 64))
(declare-fun x_ack!239 () (_ BitVec 64))
(declare-fun y_ack!240 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z0_ack!238 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!241) ((_ to_fp 11 53) x1_ack!236))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!237) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!239) ((_ to_fp 11 53) x0_ack!241))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!239) ((_ to_fp 11 53) x1_ack!236))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!240) ((_ to_fp 11 53) y0_ack!237))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!240) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!239) ((_ to_fp 11 53) x0_ack!241))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!239) ((_ to_fp 11 53) x1_ack!236))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!240) ((_ to_fp 11 53) y0_ack!237))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!240) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!236)
                       ((_ to_fp 11 53) x0_ack!241))
               ((_ to_fp 11 53) x0_ack!241))
       ((_ to_fp 11 53) x1_ack!236)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!236)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!236)
                       ((_ to_fp 11 53) x0_ack!241)))
       ((_ to_fp 11 53) x0_ack!241)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!237))
               ((_ to_fp 11 53) y0_ack!237))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!237)))
       ((_ to_fp 11 53) y0_ack!237)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!240)
                                   ((_ to_fp 11 53) y0_ack!237))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!237))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x8000000000000000) a!1)
    z0_ack!238)))

(check-sat)
(exit)
