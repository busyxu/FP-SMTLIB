(declare-fun limit_ack!378 () (_ BitVec 64))
(declare-fun epsabs_ack!376 () (_ BitVec 64))
(declare-fun epsrel_ack!377 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a_ack!379 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!378)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!376) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!377)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!377)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (FPCHECK_FINVALID_SQRT
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!379)
          ((_ to_fp 11 53) #x3f9abcb2bd7da4dd))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!379)
          ((_ to_fp 11 53) #x3f9abcb2bd7da4dd))))

(check-sat)
(exit)
