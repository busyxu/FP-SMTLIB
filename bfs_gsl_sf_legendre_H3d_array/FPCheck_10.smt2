(declare-fun c_ack!74 () (_ BitVec 64))
(declare-fun a_ack!75 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun b_ack!73 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!74) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!75 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!74) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!75)))
(assert (FPCHECK_FMUL_UNDERFLOW (fp.abs ((_ to_fp 11 53) b_ack!73)) c_ack!74))

(check-sat)
(exit)
