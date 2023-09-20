(declare-fun a_ack!100 () (_ BitVec 64))
(declare-fun b_ack!99 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!100) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!100))
            (fp.abs ((_ to_fp 11 53) b_ack!99)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!100)) (fp.abs ((_ to_fp 11 53) b_ack!99))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!99))
  (fp.abs ((_ to_fp 11 53) a_ack!100))))

(check-sat)
(exit)
