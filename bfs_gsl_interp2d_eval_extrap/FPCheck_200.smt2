(declare-fun x1_ack!2034 () (_ BitVec 64))
(declare-fun x0_ack!2038 () (_ BitVec 64))
(declare-fun y0_ack!2035 () (_ BitVec 64))
(declare-fun x_ack!2036 () (_ BitVec 64))
(declare-fun y_ack!2037 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2038) ((_ to_fp 11 53) x1_ack!2034))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2035) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2036) ((_ to_fp 11 53) x0_ack!2038))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2036) ((_ to_fp 11 53) x1_ack!2034)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2037) ((_ to_fp 11 53) y0_ack!2035))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2037) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2034)
                       ((_ to_fp 11 53) x0_ack!2038))
               ((_ to_fp 11 53) x0_ack!2038))
       ((_ to_fp 11 53) x1_ack!2034)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2034)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2034)
                       ((_ to_fp 11 53) x0_ack!2038)))
       ((_ to_fp 11 53) x0_ack!2038)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2037)
                       ((_ to_fp 11 53) y0_ack!2035))
               ((_ to_fp 11 53) y0_ack!2035))
       ((_ to_fp 11 53) y_ack!2037)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2037)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2037)
                       ((_ to_fp 11 53) y0_ack!2035)))
       ((_ to_fp 11 53) y0_ack!2035)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!2036)
                  ((_ to_fp 11 53) x0_ack!2038))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2034)
                  ((_ to_fp 11 53) x0_ack!2038)))))

(check-sat)
(exit)
