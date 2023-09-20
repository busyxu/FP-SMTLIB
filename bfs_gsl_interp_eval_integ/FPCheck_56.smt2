(declare-fun x1_ack!539 () (_ BitVec 64))
(declare-fun x0_ack!543 () (_ BitVec 64))
(declare-fun x2_ack!540 () (_ BitVec 64))
(declare-fun b_ack!542 () (_ BitVec 64))
(declare-fun a_ack!541 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!543) ((_ to_fp 11 53) x1_ack!539)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!539) ((_ to_fp 11 53) x2_ack!540)))
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
                       ((_ to_fp 11 53) x2_ack!540)
                       ((_ to_fp 11 53) x1_ack!539))
               ((_ to_fp 11 53) x1_ack!539))
       ((_ to_fp 11 53) x2_ack!540)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!540)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!540)
                       ((_ to_fp 11 53) x1_ack!539)))
       ((_ to_fp 11 53) x1_ack!539)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!539)
                    ((_ to_fp 11 53) x0_ack!543))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!540)
                    ((_ to_fp 11 53) x1_ack!539))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!541) ((_ to_fp 11 53) b_ack!542))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!541) ((_ to_fp 11 53) x0_ack!543))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!542) ((_ to_fp 11 53) x2_ack!540))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!541) ((_ to_fp 11 53) b_ack!542))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!541) ((_ to_fp 11 53) x0_ack!543))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!541) ((_ to_fp 11 53) x1_ack!539)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!539) ((_ to_fp 11 53) a_ack!541))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!542) ((_ to_fp 11 53) x1_ack!539))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!542) ((_ to_fp 11 53) x2_ack!540))))
(assert (FPCHECK_FSUB_ACCURACY x2_ack!540 x1_ack!539))

(check-sat)
(exit)
