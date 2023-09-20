(declare-fun a_ack!15 () (_ BitVec 64))
(declare-fun x_ack!17 () (_ BitVec 64))
(declare-fun b_ack!16 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!17) ((_ to_fp 11 53) a_ack!15))))
(assert (fp.gt ((_ to_fp 11 53) x_ack!17) ((_ to_fp 11 53) b_ack!16)))

(check-sat)
(exit)
