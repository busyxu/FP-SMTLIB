(declare-fun x1_ack!3342 () (_ BitVec 64))
(declare-fun x0_ack!3347 () (_ BitVec 64))
(declare-fun y0_ack!3343 () (_ BitVec 64))
(declare-fun x_ack!3345 () (_ BitVec 64))
(declare-fun y_ack!3346 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z0_ack!3344 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3347) ((_ to_fp 11 53) x1_ack!3342))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3343) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3345) ((_ to_fp 11 53) x0_ack!3347))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3345) ((_ to_fp 11 53) x1_ack!3342))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3346) ((_ to_fp 11 53) y0_ack!3343))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3346) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3342)
                       ((_ to_fp 11 53) x0_ack!3347))
               ((_ to_fp 11 53) x0_ack!3347))
       ((_ to_fp 11 53) x1_ack!3342)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3342)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3342)
                       ((_ to_fp 11 53) x0_ack!3347)))
       ((_ to_fp 11 53) x0_ack!3347)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3343))
               ((_ to_fp 11 53) y0_ack!3343))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3343)))
       ((_ to_fp 11 53) y0_ack!3343)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3346)
                       ((_ to_fp 11 53) y0_ack!3343))
               ((_ to_fp 11 53) y0_ack!3343))
       ((_ to_fp 11 53) y_ack!3346)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3346)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3346)
                       ((_ to_fp 11 53) y0_ack!3343)))
       ((_ to_fp 11 53) y0_ack!3343)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3345)
                                   ((_ to_fp 11 53) x0_ack!3347))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3342)
                                   ((_ to_fp 11 53) x0_ack!3347)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3346)
                                   ((_ to_fp 11 53) y0_ack!3343))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3343))))))
  (FPCHECK_FMUL_UNDERFLOW (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!3344)))

(check-sat)
(exit)
