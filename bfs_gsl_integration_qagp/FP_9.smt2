(declare-fun limit_ack!281 () (_ BitVec 64))
(declare-fun epsabs_ack!284 () (_ BitVec 64))
(declare-fun a_ack!285 () (_ BitVec 64))
(declare-fun x1_ack!282 () (_ BitVec 64))
(declare-fun x2_ack!283 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!281)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!284)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!282) ((_ to_fp 11 53) a_ack!285))))
(assert (fp.lt ((_ to_fp 11 53) x2_ack!283) ((_ to_fp 11 53) x1_ack!282)))

(check-sat)
(exit)
