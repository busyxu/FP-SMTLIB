(declare-fun x1_ack!538 () (_ BitVec 64))
(declare-fun x0_ack!542 () (_ BitVec 64))
(declare-fun y0_ack!539 () (_ BitVec 64))
(declare-fun x_ack!540 () (_ BitVec 64))
(declare-fun y_ack!541 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!542) ((_ to_fp 11 53) x1_ack!538))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!539) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!540) ((_ to_fp 11 53) x0_ack!542))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!540) ((_ to_fp 11 53) x1_ack!538)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!541) ((_ to_fp 11 53) y0_ack!539))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!541) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!541)
                  ((_ to_fp 11 53) y0_ack!539))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!539)))))

(check-sat)
(exit)
