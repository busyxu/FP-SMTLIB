(declare-fun b_ack!3693 () (_ BitVec 64))
(declare-fun a_ack!3694 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3693) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!3694) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3693) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!3693))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!3693)
                       ((_ to_fp 11 53) b_ack!3693))
               ((_ to_fp 11 53) b_ack!3693))
       ((_ to_fp 11 53) b_ack!3693)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!3693))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!3693)
                       ((_ to_fp 11 53) b_ack!3693))
               ((_ to_fp 11 53) b_ack!3693))
       ((_ to_fp 11 53) b_ack!3693)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) a_ack!3694))
  #x3ff0000000000000))

(check-sat)
(exit)
