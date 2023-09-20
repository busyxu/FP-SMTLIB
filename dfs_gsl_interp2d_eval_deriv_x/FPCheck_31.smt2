(declare-fun x1_ack!290 () (_ BitVec 64))
(declare-fun x0_ack!295 () (_ BitVec 64))
(declare-fun y0_ack!291 () (_ BitVec 64))
(declare-fun x_ack!293 () (_ BitVec 64))
(declare-fun y_ack!294 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z3_ack!292 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!295) ((_ to_fp 11 53) x1_ack!290))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!291) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!293) ((_ to_fp 11 53) x0_ack!295))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!293) ((_ to_fp 11 53) x1_ack!290))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!294) ((_ to_fp 11 53) y0_ack!291))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!294) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!293) ((_ to_fp 11 53) x0_ack!295))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!293) ((_ to_fp 11 53) x1_ack!290))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!294) ((_ to_fp 11 53) y0_ack!291))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!294) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!290)
                       ((_ to_fp 11 53) x0_ack!295))
               ((_ to_fp 11 53) x0_ack!295))
       ((_ to_fp 11 53) x1_ack!290)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!290)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!290)
                       ((_ to_fp 11 53) x0_ack!295)))
       ((_ to_fp 11 53) x0_ack!295)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!291))
               ((_ to_fp 11 53) y0_ack!291))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!291)))
       ((_ to_fp 11 53) y0_ack!291)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!294)
                                   ((_ to_fp 11 53) y0_ack!291))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!291))))))
  (FPCHECK_FMUL_UNDERFLOW a!1 z3_ack!292)))

(check-sat)
(exit)
