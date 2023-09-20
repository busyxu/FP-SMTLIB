(declare-fun x1_ack!519 () (_ BitVec 64))
(declare-fun x0_ack!523 () (_ BitVec 64))
(declare-fun y0_ack!520 () (_ BitVec 64))
(declare-fun x_ack!521 () (_ BitVec 64))
(declare-fun y_ack!522 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!523) ((_ to_fp 11 53) x1_ack!519))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!520) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!521) ((_ to_fp 11 53) x0_ack!523))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!521) ((_ to_fp 11 53) x1_ack!519))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!522) ((_ to_fp 11 53) y0_ack!520))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!522) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!521) ((_ to_fp 11 53) x0_ack!523))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!521) ((_ to_fp 11 53) x1_ack!519))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!522) ((_ to_fp 11 53) y0_ack!520))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!522) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!519)
                       ((_ to_fp 11 53) x0_ack!523))
               ((_ to_fp 11 53) x0_ack!523))
       ((_ to_fp 11 53) x1_ack!519)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!519)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!519)
                       ((_ to_fp 11 53) x0_ack!523)))
       ((_ to_fp 11 53) x0_ack!523)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!520))
               ((_ to_fp 11 53) y0_ack!520))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!520)))
       ((_ to_fp 11 53) y0_ack!520)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!521)
                                   ((_ to_fp 11 53) x0_ack!523))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!519)
                                   ((_ to_fp 11 53) x0_ack!523))))))
  (FPCHECK_FMUL_UNDERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y_ack!522)
                    ((_ to_fp 11 53) y0_ack!520))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) y0_ack!520))))))

(check-sat)
(exit)
