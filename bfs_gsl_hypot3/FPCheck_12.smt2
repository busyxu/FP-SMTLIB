(declare-fun c_ack!56 () (_ BitVec 64))
(declare-fun b_ack!55 () (_ BitVec 64))
(declare-fun a_ack!57 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!55))
            (fp.abs ((_ to_fp 11 53) c_ack!56)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!57)) (fp.abs ((_ to_fp 11 53) c_ack!56))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!57))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) a_ack!57))
  (fp.abs ((_ to_fp 11 53) a_ack!57))))

(check-sat)
(exit)
