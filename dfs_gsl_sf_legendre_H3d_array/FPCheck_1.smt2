(declare-fun c_ack!7 () (_ BitVec 64))
(declare-fun a_ack!8 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!6 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!7) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!8 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!7) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (= #x00000000 a_ack!8))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!6))
  (fp.abs ((_ to_fp 11 53) b_ack!6))))

(check-sat)
(exit)
