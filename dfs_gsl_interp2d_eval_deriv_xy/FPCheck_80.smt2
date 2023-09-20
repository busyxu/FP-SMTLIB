(declare-fun x1_ack!932 () (_ BitVec 64))
(declare-fun x0_ack!939 () (_ BitVec 64))
(declare-fun y0_ack!933 () (_ BitVec 64))
(declare-fun x_ack!937 () (_ BitVec 64))
(declare-fun y_ack!938 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z1_ack!935 () (_ BitVec 64))
(declare-fun z3_ack!936 () (_ BitVec 64))
(declare-fun z0_ack!934 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!939) ((_ to_fp 11 53) x1_ack!932))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!933) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!937) ((_ to_fp 11 53) x0_ack!939))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!937) ((_ to_fp 11 53) x1_ack!932))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!938) ((_ to_fp 11 53) y0_ack!933))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!938) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!937) ((_ to_fp 11 53) x0_ack!939))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!937) ((_ to_fp 11 53) x1_ack!932)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!938) ((_ to_fp 11 53) y0_ack!933))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!938) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!932)
                       ((_ to_fp 11 53) x0_ack!939))
               ((_ to_fp 11 53) x0_ack!939))
       ((_ to_fp 11 53) x1_ack!932)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!932)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!932)
                       ((_ to_fp 11 53) x0_ack!939)))
       ((_ to_fp 11 53) x0_ack!939)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!933))
               ((_ to_fp 11 53) y0_ack!933))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!933)))
       ((_ to_fp 11 53) y0_ack!933)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) z0_ack!934)
          ((_ to_fp 11 53) z3_ack!936))
  z1_ack!935))

(check-sat)
(exit)
