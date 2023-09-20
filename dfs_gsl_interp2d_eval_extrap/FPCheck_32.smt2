(declare-fun x1_ack!309 () (_ BitVec 64))
(declare-fun x0_ack!314 () (_ BitVec 64))
(declare-fun y0_ack!310 () (_ BitVec 64))
(declare-fun x_ack!312 () (_ BitVec 64))
(declare-fun y_ack!313 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z0_ack!311 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!314) ((_ to_fp 11 53) x1_ack!309))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!310) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!312) ((_ to_fp 11 53) x0_ack!314))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!312) ((_ to_fp 11 53) x1_ack!309))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!313) ((_ to_fp 11 53) y0_ack!310))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!313) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!309)
                       ((_ to_fp 11 53) x0_ack!314))
               ((_ to_fp 11 53) x0_ack!314))
       ((_ to_fp 11 53) x1_ack!309)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!309)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!309)
                       ((_ to_fp 11 53) x0_ack!314)))
       ((_ to_fp 11 53) x0_ack!314)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!310))
               ((_ to_fp 11 53) y0_ack!310))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!310)))
       ((_ to_fp 11 53) y0_ack!310)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!313)
                       ((_ to_fp 11 53) y0_ack!310))
               ((_ to_fp 11 53) y0_ack!310))
       ((_ to_fp 11 53) y_ack!313)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!313)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!313)
                       ((_ to_fp 11 53) y0_ack!310)))
       ((_ to_fp 11 53) y0_ack!310)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!312)
                                   ((_ to_fp 11 53) x0_ack!314))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!309)
                                   ((_ to_fp 11 53) x0_ack!314)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!313)
                                   ((_ to_fp 11 53) y0_ack!310))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!310))))))
  (FPCHECK_FMUL_UNDERFLOW (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!311)))

(check-sat)
(exit)
