(declare-fun a_ack!66 () (_ BitVec 64))
(declare-fun b_ack!65 () (_ BitVec 32))
(declare-fun FPCHECK_FINVALID_POW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!66) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!65)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!66) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000001 b_ack!65))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!66) ((_ to_fp 11 53) #x4000000000000000))))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 (concat #x00000000 b_ack!65))))
(assert (bvult (bvmul #x0000000000000008 (concat #x00000000 b_ack!65))
       #x0000000000000051))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 (concat #x00000000 b_ack!65))))
(assert (bvult (bvmul #x0000000000000008 (concat #x00000000 b_ack!65))
       #x0000000000000051))
(assert (FPCHECK_FINVALID_POW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) a_ack!66))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) a_ack!66))))

(check-sat)
(exit)
