(declare-fun x1_ack!2928 () (_ BitVec 64))
(declare-fun x0_ack!2932 () (_ BitVec 64))
(declare-fun y0_ack!2929 () (_ BitVec 64))
(declare-fun x_ack!2930 () (_ BitVec 64))
(declare-fun y_ack!2931 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2932) ((_ to_fp 11 53) x1_ack!2928))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2929) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2930) ((_ to_fp 11 53) x0_ack!2932))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2930) ((_ to_fp 11 53) x1_ack!2928))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2931) ((_ to_fp 11 53) y0_ack!2929))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2931) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2928)
                       ((_ to_fp 11 53) x0_ack!2932))
               ((_ to_fp 11 53) x0_ack!2932))
       ((_ to_fp 11 53) x1_ack!2928)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2928)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2928)
                       ((_ to_fp 11 53) x0_ack!2932)))
       ((_ to_fp 11 53) x0_ack!2932)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2929))
               ((_ to_fp 11 53) y0_ack!2929))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2929)))
       ((_ to_fp 11 53) y0_ack!2929)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!2930)
                  ((_ to_fp 11 53) x0_ack!2932))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2928)
                  ((_ to_fp 11 53) x0_ack!2932)))))

(check-sat)
(exit)
