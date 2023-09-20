(declare-fun a_ack!162 () (_ BitVec 64))
(declare-fun b_ack!161 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!162) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!162))
            (fp.abs ((_ to_fp 11 53) b_ack!161)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!162))
       (fp.abs ((_ to_fp 11 53) b_ack!161))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) b_ack!161))
  (fp.abs ((_ to_fp 11 53) a_ack!162))))

(check-sat)
(exit)
