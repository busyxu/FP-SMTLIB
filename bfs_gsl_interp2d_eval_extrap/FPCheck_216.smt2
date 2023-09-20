(declare-fun x1_ack!2229 () (_ BitVec 64))
(declare-fun x0_ack!2234 () (_ BitVec 64))
(declare-fun y0_ack!2230 () (_ BitVec 64))
(declare-fun x_ack!2232 () (_ BitVec 64))
(declare-fun y_ack!2233 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z2_ack!2231 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2234) ((_ to_fp 11 53) x1_ack!2229))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2230) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2232) ((_ to_fp 11 53) x0_ack!2234))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2232) ((_ to_fp 11 53) x1_ack!2229)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2233) ((_ to_fp 11 53) y0_ack!2230))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2233) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2229)
                       ((_ to_fp 11 53) x0_ack!2234))
               ((_ to_fp 11 53) x0_ack!2234))
       ((_ to_fp 11 53) x1_ack!2229)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2229)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2229)
                       ((_ to_fp 11 53) x0_ack!2234)))
       ((_ to_fp 11 53) x0_ack!2234)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2233)
                       ((_ to_fp 11 53) y0_ack!2230))
               ((_ to_fp 11 53) y0_ack!2230))
       ((_ to_fp 11 53) y_ack!2233)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2233)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2233)
                       ((_ to_fp 11 53) y0_ack!2230)))
       ((_ to_fp 11 53) y0_ack!2230)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2232)
                                   ((_ to_fp 11 53) x0_ack!2234))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2229)
                                   ((_ to_fp 11 53) x0_ack!2234)))
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!2233)
                                   ((_ to_fp 11 53) y0_ack!2230))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!2230))))))
  (FPCHECK_FMUL_ACCURACY a!1 z2_ack!2231)))

(check-sat)
(exit)
