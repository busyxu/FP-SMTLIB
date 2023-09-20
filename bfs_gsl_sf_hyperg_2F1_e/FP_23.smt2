(declare-fun a_ack!430 () (_ BitVec 64))
(declare-fun b_ack!428 () (_ BitVec 64))
(declare-fun c_ack!429 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!430) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!428) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) c_ack!429) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
