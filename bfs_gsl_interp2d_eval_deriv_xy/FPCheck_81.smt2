(declare-fun x1_ack!936 () (_ BitVec 64))
(declare-fun x0_ack!940 () (_ BitVec 64))
(declare-fun y0_ack!937 () (_ BitVec 64))
(declare-fun x_ack!938 () (_ BitVec 64))
(declare-fun y_ack!939 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!940) ((_ to_fp 11 53) x1_ack!936))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!937) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!938) ((_ to_fp 11 53) x0_ack!940))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!938) ((_ to_fp 11 53) x1_ack!936))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!939) ((_ to_fp 11 53) y0_ack!937))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!939) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!938) ((_ to_fp 11 53) x0_ack!940))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!938) ((_ to_fp 11 53) x1_ack!936)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!939) ((_ to_fp 11 53) y0_ack!937))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!939) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!936)
                       ((_ to_fp 11 53) x0_ack!940))
               ((_ to_fp 11 53) x0_ack!940))
       ((_ to_fp 11 53) x1_ack!936)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!936)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!936)
                       ((_ to_fp 11 53) x0_ack!940)))
       ((_ to_fp 11 53) x0_ack!940)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!937))
               ((_ to_fp 11 53) y0_ack!937))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!937)))
       ((_ to_fp 11 53) y0_ack!937)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!936)
                  ((_ to_fp 11 53) x0_ack!940)))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!937)))))

(check-sat)
(exit)
