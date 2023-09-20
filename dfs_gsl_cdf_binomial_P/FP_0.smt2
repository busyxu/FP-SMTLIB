(declare-fun p_ack!2 () (_ BitVec 64))
(declare-fun k_ack!0 () (_ BitVec 32))
(declare-fun n_ack!1 () (_ BitVec 32))
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!2) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!2) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule n_ack!1 k_ack!0)))

(check-sat)
(exit)
