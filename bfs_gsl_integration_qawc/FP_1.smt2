(declare-fun limit_ack!2 () (_ BitVec 64))
(declare-fun a_ack!3 () (_ BitVec 64))
(declare-fun b_ack!1 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!2)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1) ((_ to_fp 11 53) a_ack!3)))

(check-sat)
(exit)
