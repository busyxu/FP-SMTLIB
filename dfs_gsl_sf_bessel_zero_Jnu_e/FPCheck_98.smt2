(declare-fun a_ack!453 () (_ BitVec 64))
(declare-fun b_ack!452 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!453) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!452)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!453) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000001 b_ack!452)))
(assert (bvule b_ack!452 #x0000000a))
(assert (fp.lt ((_ to_fp 11 53) a_ack!453)
       ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!452)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 (concat #x00000000 b_ack!452))))
(assert (bvult (bvmul #x0000000000000008 (concat #x00000000 b_ack!452))
       #x00000000000000a1))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 (concat #x00000000 b_ack!452))))
(assert (bvult (bvmul #x0000000000000008 (concat #x00000000 b_ack!452))
       #x00000000000000a1))
(assert (FPCHECK_FDIV_OVERFLOW
  a_ack!453
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!452)))

(check-sat)
(exit)
