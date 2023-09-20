(declare-fun x1_ack!321 () (_ BitVec 64))
(declare-fun x0_ack!326 () (_ BitVec 64))
(declare-fun y0_ack!322 () (_ BitVec 64))
(declare-fun x_ack!324 () (_ BitVec 64))
(declare-fun y_ack!325 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z0_ack!323 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!326) ((_ to_fp 11 53) x1_ack!321))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!322) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!324) ((_ to_fp 11 53) x0_ack!326))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!324) ((_ to_fp 11 53) x1_ack!321))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!325) ((_ to_fp 11 53) y0_ack!322))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!325) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!321)
                       ((_ to_fp 11 53) x0_ack!326))
               ((_ to_fp 11 53) x0_ack!326))
       ((_ to_fp 11 53) x1_ack!321)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!321)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!321)
                       ((_ to_fp 11 53) x0_ack!326)))
       ((_ to_fp 11 53) x0_ack!326)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!322))
               ((_ to_fp 11 53) y0_ack!322))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!322)))
       ((_ to_fp 11 53) y0_ack!322)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!325)
                       ((_ to_fp 11 53) y0_ack!322))
               ((_ to_fp 11 53) y0_ack!322))
       ((_ to_fp 11 53) y_ack!325)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!325)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!325)
                       ((_ to_fp 11 53) y0_ack!322)))
       ((_ to_fp 11 53) y0_ack!322)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!324)
                                   ((_ to_fp 11 53) x0_ack!326))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!321)
                                   ((_ to_fp 11 53) x0_ack!326)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!325)
                                   ((_ to_fp 11 53) y0_ack!322))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!322))))))
  (FPCHECK_FMUL_ACCURACY (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!323)))

(check-sat)
(exit)
