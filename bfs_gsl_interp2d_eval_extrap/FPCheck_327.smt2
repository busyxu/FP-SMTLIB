(declare-fun x1_ack!3443 () (_ BitVec 64))
(declare-fun x0_ack!3448 () (_ BitVec 64))
(declare-fun y0_ack!3444 () (_ BitVec 64))
(declare-fun x_ack!3446 () (_ BitVec 64))
(declare-fun y_ack!3447 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z3_ack!3445 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3448) ((_ to_fp 11 53) x1_ack!3443))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3444) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3446) ((_ to_fp 11 53) x0_ack!3448))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3446) ((_ to_fp 11 53) x1_ack!3443))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3447) ((_ to_fp 11 53) y0_ack!3444))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3447) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3443)
                       ((_ to_fp 11 53) x0_ack!3448))
               ((_ to_fp 11 53) x0_ack!3448))
       ((_ to_fp 11 53) x1_ack!3443)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3443)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3443)
                       ((_ to_fp 11 53) x0_ack!3448)))
       ((_ to_fp 11 53) x0_ack!3448)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3444))
               ((_ to_fp 11 53) y0_ack!3444))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3444)))
       ((_ to_fp 11 53) y0_ack!3444)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3447)
                       ((_ to_fp 11 53) y0_ack!3444))
               ((_ to_fp 11 53) y0_ack!3444))
       ((_ to_fp 11 53) y_ack!3447)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3447)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3447)
                       ((_ to_fp 11 53) y0_ack!3444)))
       ((_ to_fp 11 53) y0_ack!3444)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3447)
                                   ((_ to_fp 11 53) y0_ack!3444))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3444))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3446)
                                   ((_ to_fp 11 53) x0_ack!3448))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3443)
                                   ((_ to_fp 11 53) x0_ack!3448)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW a!2 z3_ack!3445))))

(check-sat)
(exit)
