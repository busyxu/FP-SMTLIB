(declare-fun a_ack!486 () (_ BitVec 64))
(declare-fun b_ack!485 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!486) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!485)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!486) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000001 b_ack!485)))
(assert (not (bvule b_ack!485 #x0000000a)))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!485)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!486))))
(assert (bvule b_ack!485 #x00000014))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 (concat #x00000000 b_ack!485))))
(assert (bvult (bvmul #x0000000000000008 (concat #x00000000 b_ack!485))
       #x00000000000000a1))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 (concat #x00000000 b_ack!485))))
(assert (bvult (bvmul #x0000000000000008 (concat #x00000000 b_ack!485))
       #x00000000000000a1))

(check-sat)
(exit)
