(declare-fun x1_ack!237 () (_ BitVec 64))
(declare-fun x0_ack!241 () (_ BitVec 64))
(declare-fun y0_ack!238 () (_ BitVec 64))
(declare-fun x_ack!239 () (_ BitVec 64))
(declare-fun y_ack!240 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!241) ((_ to_fp 11 53) x1_ack!237))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!238) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!239) ((_ to_fp 11 53) x0_ack!241))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!239) ((_ to_fp 11 53) x1_ack!237))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!240) ((_ to_fp 11 53) y0_ack!238))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!240) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!237)
                       ((_ to_fp 11 53) x0_ack!241))
               ((_ to_fp 11 53) x0_ack!241))
       ((_ to_fp 11 53) x1_ack!237)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!237)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!237)
                       ((_ to_fp 11 53) x0_ack!241)))
       ((_ to_fp 11 53) x0_ack!241)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!238))
               ((_ to_fp 11 53) y0_ack!238))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!238)))
       ((_ to_fp 11 53) y0_ack!238)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!240)
                       ((_ to_fp 11 53) y0_ack!238))
               ((_ to_fp 11 53) y0_ack!238))
       ((_ to_fp 11 53) y_ack!240)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!240)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!240)
                       ((_ to_fp 11 53) y0_ack!238)))
       ((_ to_fp 11 53) y0_ack!238)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!239)
                  ((_ to_fp 11 53) x0_ack!241))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!237)
                  ((_ to_fp 11 53) x0_ack!241)))))

(check-sat)
(exit)
