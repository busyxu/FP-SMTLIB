(declare-fun a_ack!23 () (_ BitVec 64))
(declare-fun b_ack!22 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (not (fp.eq ((_ to_fp 11 53) a_ack!23)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!22) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!23))
            (fp.abs ((_ to_fp 11 53) b_ack!22)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!23))
            (fp.abs ((_ to_fp 11 53) b_ack!22)))))
(assert (FPCHECK_FDIV_ZERO
  (fp.abs ((_ to_fp 11 53) b_ack!22))
  (fp.abs ((_ to_fp 11 53) b_ack!22))))

(check-sat)
(exit)
