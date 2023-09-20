(declare-fun x1_ack!1967 () (_ BitVec 64))
(declare-fun x0_ack!1972 () (_ BitVec 64))
(declare-fun y0_ack!1968 () (_ BitVec 64))
(declare-fun x_ack!1970 () (_ BitVec 64))
(declare-fun y_ack!1971 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z3_ack!1969 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1972) ((_ to_fp 11 53) x1_ack!1967))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1968) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1970) ((_ to_fp 11 53) x0_ack!1972))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1970) ((_ to_fp 11 53) x1_ack!1967)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1971) ((_ to_fp 11 53) y0_ack!1968))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1971) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1967)
                       ((_ to_fp 11 53) x0_ack!1972))
               ((_ to_fp 11 53) x0_ack!1972))
       ((_ to_fp 11 53) x1_ack!1967)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1967)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1967)
                       ((_ to_fp 11 53) x0_ack!1972)))
       ((_ to_fp 11 53) x0_ack!1972)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1971)
                       ((_ to_fp 11 53) y0_ack!1968))
               ((_ to_fp 11 53) y0_ack!1968))
       ((_ to_fp 11 53) y_ack!1971)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1971)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1971)
                       ((_ to_fp 11 53) y0_ack!1968)))
       ((_ to_fp 11 53) y0_ack!1968)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!1971)
                                   ((_ to_fp 11 53) y0_ack!1968))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!1968))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1970)
                                   ((_ to_fp 11 53) x0_ack!1972))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1967)
                                   ((_ to_fp 11 53) x0_ack!1972)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY a!2 z3_ack!1969))))

(check-sat)
(exit)
