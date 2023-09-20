(declare-fun x1_ack!2084 () (_ BitVec 64))
(declare-fun x0_ack!2089 () (_ BitVec 64))
(declare-fun y0_ack!2085 () (_ BitVec 64))
(declare-fun x_ack!2087 () (_ BitVec 64))
(declare-fun y_ack!2088 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z1_ack!2086 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2089) ((_ to_fp 11 53) x1_ack!2084))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2085) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2087) ((_ to_fp 11 53) x0_ack!2089))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2087) ((_ to_fp 11 53) x1_ack!2084)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2088) ((_ to_fp 11 53) y0_ack!2085))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2088) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2084)
                       ((_ to_fp 11 53) x0_ack!2089))
               ((_ to_fp 11 53) x0_ack!2089))
       ((_ to_fp 11 53) x1_ack!2084)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2084)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2084)
                       ((_ to_fp 11 53) x0_ack!2089)))
       ((_ to_fp 11 53) x0_ack!2089)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2088)
                       ((_ to_fp 11 53) y0_ack!2085))
               ((_ to_fp 11 53) y0_ack!2085))
       ((_ to_fp 11 53) y_ack!2088)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2088)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2088)
                       ((_ to_fp 11 53) y0_ack!2085)))
       ((_ to_fp 11 53) y0_ack!2085)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2087)
                                   ((_ to_fp 11 53) x0_ack!2089))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2084)
                                   ((_ to_fp 11 53) x0_ack!2089))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!2088)
                                   ((_ to_fp 11 53) y0_ack!2085))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!2085))))))
  (FPCHECK_FMUL_OVERFLOW a!2 z1_ack!2086))))

(check-sat)
(exit)
