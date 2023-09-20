(declare-fun x1_ack!539 () (_ BitVec 64))
(declare-fun x0_ack!543 () (_ BitVec 64))
(declare-fun y0_ack!540 () (_ BitVec 64))
(declare-fun x_ack!541 () (_ BitVec 64))
(declare-fun y_ack!542 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!543) ((_ to_fp 11 53) x1_ack!539))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!540) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!541) ((_ to_fp 11 53) x0_ack!543))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!541) ((_ to_fp 11 53) x1_ack!539))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!542) ((_ to_fp 11 53) y0_ack!540))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!542) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!541) ((_ to_fp 11 53) x0_ack!543))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!541) ((_ to_fp 11 53) x1_ack!539))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!542) ((_ to_fp 11 53) y0_ack!540))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!542) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!539)
                       ((_ to_fp 11 53) x0_ack!543))
               ((_ to_fp 11 53) x0_ack!543))
       ((_ to_fp 11 53) x1_ack!539)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!539)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!539)
                       ((_ to_fp 11 53) x0_ack!543)))
       ((_ to_fp 11 53) x0_ack!543)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!540))
               ((_ to_fp 11 53) y0_ack!540))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!540)))
       ((_ to_fp 11 53) y0_ack!540)))

(check-sat)
(exit)
