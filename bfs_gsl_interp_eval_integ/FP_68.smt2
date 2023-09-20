(declare-fun x1_ack!3689 () (_ BitVec 64))
(declare-fun x0_ack!3693 () (_ BitVec 64))
(declare-fun x2_ack!3690 () (_ BitVec 64))
(declare-fun b_ack!3692 () (_ BitVec 64))
(declare-fun a_ack!3691 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3693) ((_ to_fp 11 53) x1_ack!3689)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3689) ((_ to_fp 11 53) x2_ack!3690)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3689)
                       ((_ to_fp 11 53) x0_ack!3693))
               ((_ to_fp 11 53) x0_ack!3693))
       ((_ to_fp 11 53) x1_ack!3689)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3689)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3689)
                       ((_ to_fp 11 53) x0_ack!3693)))
       ((_ to_fp 11 53) x0_ack!3693)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3690)
                       ((_ to_fp 11 53) x1_ack!3689))
               ((_ to_fp 11 53) x1_ack!3689))
       ((_ to_fp 11 53) x2_ack!3690)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3690)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3690)
                       ((_ to_fp 11 53) x1_ack!3689)))
       ((_ to_fp 11 53) x1_ack!3689)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3689)
                    ((_ to_fp 11 53) x0_ack!3693))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3690)
                    ((_ to_fp 11 53) x1_ack!3689))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3691) ((_ to_fp 11 53) b_ack!3692))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3691) ((_ to_fp 11 53) x0_ack!3693))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3692) ((_ to_fp 11 53) x2_ack!3690))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3691) ((_ to_fp 11 53) b_ack!3692))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3691) ((_ to_fp 11 53) x0_ack!3693))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3691) ((_ to_fp 11 53) x1_ack!3689)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3689) ((_ to_fp 11 53) a_ack!3691))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3692) ((_ to_fp 11 53) x1_ack!3689))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3692) ((_ to_fp 11 53) x2_ack!3690)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3690)
                    ((_ to_fp 11 53) x1_ack!3689))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
