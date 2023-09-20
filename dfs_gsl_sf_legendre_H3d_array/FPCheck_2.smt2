(declare-fun c_ack!13 () (_ BitVec 64))
(declare-fun a_ack!14 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!12 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!13) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!14 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!13) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (= #x00000000 a_ack!14))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.abs ((_ to_fp 11 53) b_ack!12))
  (fp.abs ((_ to_fp 11 53) b_ack!12))))

(check-sat)
(exit)
