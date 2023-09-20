(declare-fun x1_ack!2746 () (_ BitVec 64))
(declare-fun x0_ack!2751 () (_ BitVec 64))
(declare-fun y0_ack!2747 () (_ BitVec 64))
(declare-fun x_ack!2749 () (_ BitVec 64))
(declare-fun y_ack!2750 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z0_ack!2748 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2751) ((_ to_fp 11 53) x1_ack!2746))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2747) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2749) ((_ to_fp 11 53) x0_ack!2751))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2749) ((_ to_fp 11 53) x1_ack!2746))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2750) ((_ to_fp 11 53) y0_ack!2747))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2750) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2746)
                       ((_ to_fp 11 53) x0_ack!2751))
               ((_ to_fp 11 53) x0_ack!2751))
       ((_ to_fp 11 53) x1_ack!2746)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2746)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2746)
                       ((_ to_fp 11 53) x0_ack!2751)))
       ((_ to_fp 11 53) x0_ack!2751)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2747))
               ((_ to_fp 11 53) y0_ack!2747))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2747)))
       ((_ to_fp 11 53) y0_ack!2747)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2749)
                                   ((_ to_fp 11 53) x0_ack!2751))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2746)
                                   ((_ to_fp 11 53) x0_ack!2751)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!2750)
                                   ((_ to_fp 11 53) y0_ack!2747))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!2747))))))
  (FPCHECK_FMUL_OVERFLOW (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!2748)))

(check-sat)
(exit)
