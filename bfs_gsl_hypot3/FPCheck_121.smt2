(declare-fun c_ack!617 () (_ BitVec 64))
(declare-fun b_ack!616 () (_ BitVec 64))
(declare-fun a_ack!618 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!616))
       (fp.abs ((_ to_fp 11 53) c_ack!617))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!618))
       (fp.abs ((_ to_fp 11 53) b_ack!616))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!618))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) a_ack!618))
  (fp.abs ((_ to_fp 11 53) a_ack!618))))

(check-sat)
(exit)
