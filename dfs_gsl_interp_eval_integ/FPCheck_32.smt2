(declare-fun x1_ack!238 () (_ BitVec 64))
(declare-fun x0_ack!243 () (_ BitVec 64))
(declare-fun x2_ack!239 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!240 () (_ BitVec 64))
(declare-fun y1_ack!241 () (_ BitVec 64))
(declare-fun y2_ack!242 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!243) ((_ to_fp 11 53) x1_ack!238)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!238) ((_ to_fp 11 53) x2_ack!239)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!238)
                       ((_ to_fp 11 53) x0_ack!243))
               ((_ to_fp 11 53) x0_ack!243))
       ((_ to_fp 11 53) x1_ack!238)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!238)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!238)
                       ((_ to_fp 11 53) x0_ack!243)))
       ((_ to_fp 11 53) x0_ack!243)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!239)
                       ((_ to_fp 11 53) x1_ack!238))
               ((_ to_fp 11 53) x1_ack!238))
       ((_ to_fp 11 53) x2_ack!239)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!239)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!239)
                       ((_ to_fp 11 53) x1_ack!238)))
       ((_ to_fp 11 53) x1_ack!238)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!238)
                    ((_ to_fp 11 53) x0_ack!243))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!239)
                    ((_ to_fp 11 53) x1_ack!238))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!242)
                           ((_ to_fp 11 53) y1_ack!241))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!239)
                                   ((_ to_fp 11 53) x1_ack!238)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!241)
                           ((_ to_fp 11 53) y0_ack!240))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!238)
                                   ((_ to_fp 11 53) x0_ack!243))))))
  (FPCHECK_FSUB_OVERFLOW a!1 a!2)))

(check-sat)
(exit)
