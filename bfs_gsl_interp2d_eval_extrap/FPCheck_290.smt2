(declare-fun x1_ack!3012 () (_ BitVec 64))
(declare-fun x0_ack!3017 () (_ BitVec 64))
(declare-fun y0_ack!3013 () (_ BitVec 64))
(declare-fun x_ack!3015 () (_ BitVec 64))
(declare-fun y_ack!3016 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z1_ack!3014 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3017) ((_ to_fp 11 53) x1_ack!3012))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3013) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3015) ((_ to_fp 11 53) x0_ack!3017))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3015) ((_ to_fp 11 53) x1_ack!3012))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3016) ((_ to_fp 11 53) y0_ack!3013))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3016) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3012)
                       ((_ to_fp 11 53) x0_ack!3017))
               ((_ to_fp 11 53) x0_ack!3017))
       ((_ to_fp 11 53) x1_ack!3012)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3012)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3012)
                       ((_ to_fp 11 53) x0_ack!3017)))
       ((_ to_fp 11 53) x0_ack!3017)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3013))
               ((_ to_fp 11 53) y0_ack!3013))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3013)))
       ((_ to_fp 11 53) y0_ack!3013)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3015)
                                   ((_ to_fp 11 53) x0_ack!3017))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3012)
                                   ((_ to_fp 11 53) x0_ack!3017))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3016)
                                   ((_ to_fp 11 53) y0_ack!3013))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3013))))))
  (FPCHECK_FMUL_ACCURACY a!2 z1_ack!3014))))

(check-sat)
(exit)
