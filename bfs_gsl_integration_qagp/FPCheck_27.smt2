(declare-fun limit_ack!455 () (_ BitVec 64))
(declare-fun epsabs_ack!460 () (_ BitVec 64))
(declare-fun epsrel_ack!454 () (_ BitVec 64))
(declare-fun a_ack!461 () (_ BitVec 64))
(declare-fun x1_ack!456 () (_ BitVec 64))
(declare-fun x2_ack!457 () (_ BitVec 64))
(declare-fun x3_ack!458 () (_ BitVec 64))
(declare-fun b_ack!459 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!455)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!460) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!454)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!454)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!456) ((_ to_fp 11 53) a_ack!461))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!457) ((_ to_fp 11 53) x1_ack!456))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!458) ((_ to_fp 11 53) x2_ack!457))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!459) ((_ to_fp 11 53) x3_ack!458))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!461)
                  ((_ to_fp 11 53) x1_ack!456)))))

(check-sat)
(exit)
