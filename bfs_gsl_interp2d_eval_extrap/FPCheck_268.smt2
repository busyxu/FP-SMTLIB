(declare-fun x1_ack!2758 () (_ BitVec 64))
(declare-fun x0_ack!2763 () (_ BitVec 64))
(declare-fun y0_ack!2759 () (_ BitVec 64))
(declare-fun x_ack!2761 () (_ BitVec 64))
(declare-fun y_ack!2762 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z0_ack!2760 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2763) ((_ to_fp 11 53) x1_ack!2758))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2759) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2761) ((_ to_fp 11 53) x0_ack!2763))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2761) ((_ to_fp 11 53) x1_ack!2758))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2762) ((_ to_fp 11 53) y0_ack!2759))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2762) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2758)
                       ((_ to_fp 11 53) x0_ack!2763))
               ((_ to_fp 11 53) x0_ack!2763))
       ((_ to_fp 11 53) x1_ack!2758)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2758)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2758)
                       ((_ to_fp 11 53) x0_ack!2763)))
       ((_ to_fp 11 53) x0_ack!2763)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2759))
               ((_ to_fp 11 53) y0_ack!2759))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2759)))
       ((_ to_fp 11 53) y0_ack!2759)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2761)
                                   ((_ to_fp 11 53) x0_ack!2763))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2758)
                                   ((_ to_fp 11 53) x0_ack!2763)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!2762)
                                   ((_ to_fp 11 53) y0_ack!2759))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!2759))))))
  (FPCHECK_FMUL_UNDERFLOW (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!2760)))

(check-sat)
(exit)
