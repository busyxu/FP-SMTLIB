(declare-fun x1_ack!2711 () (_ BitVec 64))
(declare-fun x0_ack!2715 () (_ BitVec 64))
(declare-fun y0_ack!2712 () (_ BitVec 64))
(declare-fun x_ack!2713 () (_ BitVec 64))
(declare-fun y_ack!2714 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2715) ((_ to_fp 11 53) x1_ack!2711))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2712) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2713) ((_ to_fp 11 53) x0_ack!2715))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2713) ((_ to_fp 11 53) x1_ack!2711))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2714) ((_ to_fp 11 53) y0_ack!2712))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2714) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2711)
                       ((_ to_fp 11 53) x0_ack!2715))
               ((_ to_fp 11 53) x0_ack!2715))
       ((_ to_fp 11 53) x1_ack!2711)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2711)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2711)
                       ((_ to_fp 11 53) x0_ack!2715)))
       ((_ to_fp 11 53) x0_ack!2715)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2712))
               ((_ to_fp 11 53) y0_ack!2712))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2712)))
       ((_ to_fp 11 53) y0_ack!2712)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2713)
                                   ((_ to_fp 11 53) x0_ack!2715))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2711)
                                   ((_ to_fp 11 53) x0_ack!2715)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!2714)
                                   ((_ to_fp 11 53) y0_ack!2712))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!2712))))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!2)))

(check-sat)
(exit)
