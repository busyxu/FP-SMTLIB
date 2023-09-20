(declare-fun x1_ack!2170 () (_ BitVec 64))
(declare-fun x0_ack!2174 () (_ BitVec 64))
(declare-fun y0_ack!2171 () (_ BitVec 64))
(declare-fun x_ack!2172 () (_ BitVec 64))
(declare-fun y_ack!2173 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2174) ((_ to_fp 11 53) x1_ack!2170))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2171) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2172) ((_ to_fp 11 53) x0_ack!2174))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2172) ((_ to_fp 11 53) x1_ack!2170)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2173) ((_ to_fp 11 53) y0_ack!2171))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2173) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2170)
                       ((_ to_fp 11 53) x0_ack!2174))
               ((_ to_fp 11 53) x0_ack!2174))
       ((_ to_fp 11 53) x1_ack!2170)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2170)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2170)
                       ((_ to_fp 11 53) x0_ack!2174)))
       ((_ to_fp 11 53) x0_ack!2174)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2173)
                       ((_ to_fp 11 53) y0_ack!2171))
               ((_ to_fp 11 53) y0_ack!2171))
       ((_ to_fp 11 53) y_ack!2173)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2173)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2173)
                       ((_ to_fp 11 53) y0_ack!2171)))
       ((_ to_fp 11 53) y0_ack!2171)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!2172)
                  ((_ to_fp 11 53) x0_ack!2174))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2170)
                  ((_ to_fp 11 53) x0_ack!2174)))
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!2173)
                  ((_ to_fp 11 53) y0_ack!2171))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!2171)))))

(check-sat)
(exit)
