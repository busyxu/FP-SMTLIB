(declare-fun key_ack!799 () (_ BitVec 32))
(declare-fun limit_ack!798 () (_ BitVec 64))
(declare-fun epsabs_ack!796 () (_ BitVec 64))
(declare-fun epsrel_ack!797 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!795 () (_ BitVec 64))
(declare-fun a_ack!800 () (_ BitVec 64))
(assert (bvslt key_ack!799 #x00000001))
(assert (not (bvult #x00000000000003e8 limit_ack!798)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!796) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!797)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!797)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!800)
          ((_ to_fp 11 53) b_ack!795))))

(check-sat)
(exit)
