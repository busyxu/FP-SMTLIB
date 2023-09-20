(declare-fun x1_ack!845 () (_ BitVec 64))
(declare-fun x0_ack!849 () (_ BitVec 64))
(declare-fun y0_ack!846 () (_ BitVec 64))
(declare-fun x_ack!847 () (_ BitVec 64))
(declare-fun y_ack!848 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!849) ((_ to_fp 11 53) x1_ack!845))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!846) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!847) ((_ to_fp 11 53) x0_ack!849))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!847) ((_ to_fp 11 53) x1_ack!845))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!848) ((_ to_fp 11 53) y0_ack!846))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!848) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!847) ((_ to_fp 11 53) x0_ack!849))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!847) ((_ to_fp 11 53) x1_ack!845)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!848) ((_ to_fp 11 53) y0_ack!846))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!848) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!845)
                       ((_ to_fp 11 53) x0_ack!849))
               ((_ to_fp 11 53) x0_ack!849))
       ((_ to_fp 11 53) x1_ack!845)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!845)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!845)
                       ((_ to_fp 11 53) x0_ack!849)))
       ((_ to_fp 11 53) x0_ack!849)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!846))
               ((_ to_fp 11 53) y0_ack!846))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!846)))
       ((_ to_fp 11 53) y0_ack!846)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!845)
                  ((_ to_fp 11 53) x0_ack!849)))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!846)))))

(check-sat)
(exit)
