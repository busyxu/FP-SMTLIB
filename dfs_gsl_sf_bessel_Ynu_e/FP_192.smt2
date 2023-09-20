(declare-fun b_ack!3689 () (_ BitVec 64))
(declare-fun a_ack!3690 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3689) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!3690) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3689) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!3689))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!3689)
                       ((_ to_fp 11 53) b_ack!3689))
               ((_ to_fp 11 53) b_ack!3689))
       ((_ to_fp 11 53) b_ack!3689)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!3689))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!3689)
                       ((_ to_fp 11 53) b_ack!3689))
               ((_ to_fp 11 53) b_ack!3689))
       ((_ to_fp 11 53) b_ack!3689)))

(check-sat)
(exit)
