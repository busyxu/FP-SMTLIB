(declare-fun c_ack!12 () (_ BitVec 64))
(declare-fun a_ack!13 () (_ BitVec 32))
(declare-fun b_ack!11 () (_ BitVec 32))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!12))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (bvslt b_ack!11 a_ack!13))

(check-sat)
(exit)
