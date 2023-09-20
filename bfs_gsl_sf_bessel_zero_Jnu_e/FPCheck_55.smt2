(declare-fun a_ack!230 () (_ BitVec 64))
(declare-fun b_ack!229 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!230) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!229)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!230) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000001 b_ack!229)))
(assert (bvule b_ack!229 #x0000000a))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!230)
            ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!229))))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 (concat #x00000000 b_ack!229))))
(assert (bvult (bvmul #x0000000000000008 (concat #x00000000 b_ack!229))
       #x0000000000000051))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 (concat #x00000000 b_ack!229))))
(assert (bvult (bvmul #x0000000000000008 (concat #x00000000 b_ack!229))
       #x0000000000000051))
(assert (FPCHECK_FDIV_UNDERFLOW
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!229)
  a_ack!230))

(check-sat)
(exit)
