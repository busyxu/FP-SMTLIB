(declare-fun c_ack!11 () (_ BitVec 64))
(declare-fun b_ack!10 () (_ BitVec 64))
(declare-fun a_ack!12 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!10)) (fp.abs ((_ to_fp 11 53) c_ack!11))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!12))
            (fp.abs ((_ to_fp 11 53) b_ack!10)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!10)) (fp.abs ((_ to_fp 11 53) c_ack!11))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!10))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) a_ack!12))
  (fp.abs ((_ to_fp 11 53) b_ack!10))))

(check-sat)
(exit)
