(declare-fun a_ack!380 () (_ BitVec 32))
(declare-fun b_ack!378 () (_ BitVec 32))
(declare-fun c_ack!379 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!380 #x00000000)))
(assert (not (bvslt b_ack!378 a_ack!380)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!379) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!378))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!379) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!379) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FINVALID_LOG c_ack!379 c_ack!379))

(check-sat)
(exit)
