(declare-fun a_ack!62 () (_ BitVec 64))
(declare-fun b_ack!61 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!62) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!61)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!62) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000001 b_ack!61))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!62) ((_ to_fp 11 53) #x4000000000000000))))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 (concat #x00000000 b_ack!61))))
(assert (bvult (bvmul #x0000000000000008 (concat #x00000000 b_ack!61))
       #x0000000000000051))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 (concat #x00000000 b_ack!61))))
(assert (bvult (bvmul #x0000000000000008 (concat #x00000000 b_ack!61))
       #x0000000000000051))
(assert (fp.eq ((_ to_fp 11 53) a_ack!62) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
