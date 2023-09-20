(declare-fun c_ack!749 () (_ BitVec 64))
(declare-fun b_ack!748 () (_ BitVec 64))
(declare-fun a_ack!750 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!748))
            (fp.abs ((_ to_fp 11 53) c_ack!749)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!750))
       (fp.abs ((_ to_fp 11 53) c_ack!749))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!750))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) c_ack!749))
  (fp.abs ((_ to_fp 11 53) a_ack!750))))

(check-sat)
(exit)
