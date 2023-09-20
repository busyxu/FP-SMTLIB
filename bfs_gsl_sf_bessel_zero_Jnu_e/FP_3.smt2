(declare-fun a_ack!16 () (_ BitVec 64))
(declare-fun b_ack!15 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!16) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!15)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!16) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000001 b_ack!15))
(assert (fp.lt ((_ to_fp 11 53) a_ack!16) ((_ to_fp 11 53) #x4000000000000000)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 (concat #x00000000 b_ack!15))))
(assert (bvult (bvmul #x0000000000000008 (concat #x00000000 b_ack!15))
       #x00000000000000a1))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 (concat #x00000000 b_ack!15))))
(assert (bvult (bvmul #x0000000000000008 (concat #x00000000 b_ack!15))
       #x00000000000000a1))

(check-sat)
(exit)
