(declare-fun x1_ack!3354 () (_ BitVec 64))
(declare-fun x0_ack!3359 () (_ BitVec 64))
(declare-fun y0_ack!3355 () (_ BitVec 64))
(declare-fun x_ack!3357 () (_ BitVec 64))
(declare-fun y_ack!3358 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z0_ack!3356 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3359) ((_ to_fp 11 53) x1_ack!3354))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3355) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3357) ((_ to_fp 11 53) x0_ack!3359))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3357) ((_ to_fp 11 53) x1_ack!3354))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3358) ((_ to_fp 11 53) y0_ack!3355))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3358) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3354)
                       ((_ to_fp 11 53) x0_ack!3359))
               ((_ to_fp 11 53) x0_ack!3359))
       ((_ to_fp 11 53) x1_ack!3354)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3354)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3354)
                       ((_ to_fp 11 53) x0_ack!3359)))
       ((_ to_fp 11 53) x0_ack!3359)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3355))
               ((_ to_fp 11 53) y0_ack!3355))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3355)))
       ((_ to_fp 11 53) y0_ack!3355)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3358)
                       ((_ to_fp 11 53) y0_ack!3355))
               ((_ to_fp 11 53) y0_ack!3355))
       ((_ to_fp 11 53) y_ack!3358)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3358)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3358)
                       ((_ to_fp 11 53) y0_ack!3355)))
       ((_ to_fp 11 53) y0_ack!3355)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3357)
                                   ((_ to_fp 11 53) x0_ack!3359))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3354)
                                   ((_ to_fp 11 53) x0_ack!3359)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3358)
                                   ((_ to_fp 11 53) y0_ack!3355))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3355))))))
  (FPCHECK_FMUL_ACCURACY (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!3356)))

(check-sat)
(exit)
