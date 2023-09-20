(declare-fun a_ack!2249 () (_ BitVec 32))
(declare-fun b_ack!2247 () (_ BitVec 32))
(declare-fun c_ack!2248 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!2247 a_ack!2249)))
(assert (not (bvslt a_ack!2249 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2248) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!2247))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!2248))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.abs ((_ to_fp 11 53) c_ack!2248))))

(check-sat)
(exit)
