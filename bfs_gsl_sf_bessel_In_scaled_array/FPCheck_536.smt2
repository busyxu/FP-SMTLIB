(declare-fun a_ack!2306 () (_ BitVec 32))
(declare-fun b_ack!2304 () (_ BitVec 32))
(declare-fun c_ack!2305 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!2304 a_ack!2306)))
(assert (not (bvslt a_ack!2306 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2305) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!2304))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!2305))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!2305))
        ((_ to_fp 11 53) #x4008000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x8000000000000000
  (fp.abs ((_ to_fp 11 53) c_ack!2305))))

(check-sat)
(exit)
