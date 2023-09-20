(declare-fun x1_ack!2180 () (_ BitVec 64))
(declare-fun x0_ack!2184 () (_ BitVec 64))
(declare-fun y0_ack!2181 () (_ BitVec 64))
(declare-fun x_ack!2182 () (_ BitVec 64))
(declare-fun y_ack!2183 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2184) ((_ to_fp 11 53) x1_ack!2180))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2181) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2182) ((_ to_fp 11 53) x0_ack!2184))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2182) ((_ to_fp 11 53) x1_ack!2180)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2183) ((_ to_fp 11 53) y0_ack!2181))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2183) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2180)
                       ((_ to_fp 11 53) x0_ack!2184))
               ((_ to_fp 11 53) x0_ack!2184))
       ((_ to_fp 11 53) x1_ack!2180)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2180)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2180)
                       ((_ to_fp 11 53) x0_ack!2184)))
       ((_ to_fp 11 53) x0_ack!2184)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2183)
                       ((_ to_fp 11 53) y0_ack!2181))
               ((_ to_fp 11 53) y0_ack!2181))
       ((_ to_fp 11 53) y_ack!2183)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2183)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2183)
                       ((_ to_fp 11 53) y0_ack!2181)))
       ((_ to_fp 11 53) y0_ack!2181)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!2182)
                  ((_ to_fp 11 53) x0_ack!2184))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2180)
                  ((_ to_fp 11 53) x0_ack!2184)))
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!2183)
                  ((_ to_fp 11 53) y0_ack!2181))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!2181)))))

(check-sat)
(exit)
